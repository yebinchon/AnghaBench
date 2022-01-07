
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int leave_menu ;
 int menu_op (int ) ;
 int quit (int ) ;
 scalar_t__ text_changes ;

void
leave_op()
{
 if (text_changes)
 {
  menu_op(leave_menu);
 }
 else
  quit(TRUE);
}
