
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zap_cursor_t ;
struct TYPE_3__ {int za_integer_length; int za_num_integers; char* za_name; scalar_t__ za_first_integer; } ;
typedef TYPE_1__ zap_attribute_t ;
typedef int val ;
typedef int uint64_t ;
typedef char* u_longlong_t ;
typedef int objset_t ;


 int ASSERT (int) ;
 int VERIFY (int) ;
 int printf (char*,char const*,...) ;
 int zap_cursor_advance (int *) ;
 int zap_cursor_fini (int *) ;
 int zap_cursor_init (int *,int *,int ) ;
 scalar_t__ zap_cursor_retrieve (int *,TYPE_1__*) ;
 scalar_t__ zap_lookup (int *,int ,char*,int,int,char*) ;

__attribute__((used)) static void
dump_obj(objset_t *os, uint64_t obj, const char *name)
{
 zap_cursor_t zc;
 zap_attribute_t za;

 (void) printf("%s_obj:\n", name);

 for (zap_cursor_init(&zc, os, obj);
     zap_cursor_retrieve(&zc, &za) == 0;
     zap_cursor_advance(&zc)) {
  if (za.za_integer_length == 8) {
   ASSERT(za.za_num_integers == 1);
   (void) printf("\t%s = %llu\n",
       za.za_name, (u_longlong_t)za.za_first_integer);
  } else {
   ASSERT(za.za_integer_length == 1);
   char val[1024];
   VERIFY(zap_lookup(os, obj, za.za_name,
       1, sizeof (val), val) == 0);
   (void) printf("\t%s = %s\n", za.za_name, val);
  }
 }
 zap_cursor_fini(&zc);
}
