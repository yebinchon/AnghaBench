
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_3__ {char* za_name; int za_num_integers; int za_integer_length; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_longlong_t ;
typedef int objset_t ;
typedef int int64_t ;


 int UMEM_NOFAIL ;
 int dump_zap_stats (int *,int ) ;
 int printf (char*,...) ;
 int umem_free (void*,int) ;
 void* umem_zalloc (int,int ) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int *,int ) ;
 scalar_t__ zap_cursor_retrieve (int *,TYPE_1__*) ;
 int zap_lookup (int *,int ,char*,int,int,void*) ;

__attribute__((used)) static void
dump_zap(objset_t *os, uint64_t object, void *data, size_t size)
{
 zap_cursor_t zc;
 zap_attribute_t attr;
 void *prop;
 unsigned i;

 dump_zap_stats(os, object);
 (void) printf("\n");

 for (zap_cursor_init(&zc, os, object);
     zap_cursor_retrieve(&zc, &attr) == 0;
     zap_cursor_advance(&zc)) {
  (void) printf("\t\t%s = ", attr.za_name);
  if (attr.za_num_integers == 0) {
   (void) printf("\n");
   continue;
  }
  prop = umem_zalloc(attr.za_num_integers *
      attr.za_integer_length, UMEM_NOFAIL);
  (void) zap_lookup(os, object, attr.za_name,
      attr.za_integer_length, attr.za_num_integers, prop);
  if (attr.za_integer_length == 1) {
   (void) printf("%s", (char *)prop);
  } else {
   for (i = 0; i < attr.za_num_integers; i++) {
    switch (attr.za_integer_length) {
    case 2:
     (void) printf("%u ",
         ((uint16_t *)prop)[i]);
     break;
    case 4:
     (void) printf("%u ",
         ((uint32_t *)prop)[i]);
     break;
    case 8:
     (void) printf("%lld ",
         (u_longlong_t)((int64_t *)prop)[i]);
     break;
    }
   }
  }
  (void) printf("\n");
  umem_free(prop, attr.za_num_integers * attr.za_integer_length);
 }
 zap_cursor_fini(&zc);
}
