
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ help; int items; } ;
typedef TYPE_1__ rc_menu ;
typedef int FILE ;


 int fprintf (int *,char*,unsigned int) ;
 int write_rc_menuitems (int *,int ,int,int ) ;

__attribute__((used)) static void
write_rc_menu (FILE *e, const rc_menu *menu, int menuex)
{
  if (menu->help != 0)
    fprintf (e, "// Help ID: %u\n", (unsigned int) menu->help);
  write_rc_menuitems (e, menu->items, menuex, 0);
}
