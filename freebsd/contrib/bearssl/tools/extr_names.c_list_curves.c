
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char** sid; scalar_t__ name; } ;


 TYPE_1__* curves ;
 int printf (char*,...) ;

void
list_curves(void)
{
 size_t u;
 for (u = 0; curves[u].name; u ++) {
  size_t v;

  for (v = 0; curves[u].sid[v]; v ++) {
   if (v == 0) {
    printf("   ");
   } else if (v == 1) {
    printf(" (");
   } else {
    printf(", ");
   }
   printf("%s", curves[u].sid[v]);
  }
  if (v > 1) {
   printf(")");
  }
  printf("\n");
 }
}
