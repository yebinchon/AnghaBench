
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ line; int * prev_line; } ;


 int TRUE ;
 TYPE_1__* curr_line ;
 int left (int ) ;
 scalar_t__ point ;
 scalar_t__ scr_pos ;
 int up () ;

void
bol()
{
 if (point != curr_line->line)
 {
  while (point != curr_line->line)
   left(TRUE);
 }
 else if (curr_line->prev_line != ((void*)0))
 {
  scr_pos = 0;
  up();
 }
}
