
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cb_namewidth; } ;
typedef TYPE_1__ iostat_cbdata_t ;


 int printf (char*) ;

__attribute__((used)) static void
print_iostat_separator(iostat_cbdata_t *cb)
{
 int i = 0;

 for (i = 0; i < cb->cb_namewidth; i++)
  (void) printf("-");
 (void) printf("  -----  -----  -----  -----  -----  -----\n");
}
