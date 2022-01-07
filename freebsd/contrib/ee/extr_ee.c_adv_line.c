
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ line; scalar_t__ line_length; int * next_line; } ;


 int TRUE ;
 TYPE_1__* curr_line ;
 int down () ;
 scalar_t__ point ;
 scalar_t__ position ;
 int right (int ) ;
 scalar_t__ scr_pos ;

void
adv_line()
{
 if ((point != curr_line->line) || (scr_pos > 0))
 {
  while (position < curr_line->line_length)
   right(TRUE);
  right(TRUE);
 }
 else if (curr_line->next_line != ((void*)0))
 {
  scr_pos = 0;
  down();
 }
}
