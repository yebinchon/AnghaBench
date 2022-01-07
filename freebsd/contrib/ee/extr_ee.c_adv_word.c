
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ line_length; } ;


 int TRUE ;
 TYPE_1__* curr_line ;
 int* point ;
 scalar_t__ position ;
 int right (int ) ;

void
adv_word()
{
while ((position < curr_line->line_length) && ((*point != 32) && (*point != 9)))
  right(TRUE);
while ((position < curr_line->line_length) && ((*point == 32) || (*point == 9)))
  right(TRUE);
}
