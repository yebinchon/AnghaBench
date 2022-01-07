
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int line; int * prev_line; } ;


 TYPE_1__* curr_line ;
 int find_pos () ;
 int point ;
 int prevline () ;

void
up()
{
 if (curr_line->prev_line != ((void*)0))
 {
  prevline();
  point = curr_line->line;
  find_pos();
 }
}
