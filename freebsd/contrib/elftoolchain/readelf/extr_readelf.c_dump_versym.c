
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint16_t ;
struct readelf {size_t* vs; int vs_sz; size_t ver_sz; TYPE_2__* ver; TYPE_1__* vs_s; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {char* name; } ;


 int VERSYM_HIDDEN ;
 size_t VERSYM_VERSION ;
 int printf (char*,...) ;
 int putchar (char) ;
 int warnx (char*,size_t) ;

__attribute__((used)) static void
dump_versym(struct readelf *re)
{
 int i;
 uint16_t vs;

 if (re->vs_s == ((void*)0) || re->ver == ((void*)0) || re->vs == ((void*)0))
  return;
 printf("\nVersion symbol section (%s):\n", re->vs_s->name);
 for (i = 0; i < re->vs_sz; i++) {
  if ((i & 3) == 0) {
   if (i > 0)
    putchar('\n');
   printf("  %03x:", i);
  }
  vs = re->vs[i] & VERSYM_VERSION;
  if (vs >= re->ver_sz || re->ver[vs].name == ((void*)0)) {
   warnx("invalid versym version index %u", re->vs[i]);
   break;
  }
  if (re->vs[i] & VERSYM_HIDDEN)
   printf(" %3xh %-12s ", vs,
       re->ver[re->vs[i] & VERSYM_VERSION].name);
  else
   printf(" %3x %-12s ", vs, re->ver[re->vs[i]].name);
 }
 putchar('\n');
}
