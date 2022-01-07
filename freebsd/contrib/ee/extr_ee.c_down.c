
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * next_line; } ;


 TYPE_1__* curr_line ;
 int find_pos () ;
 int nextline () ;

void
down()
{
 if (curr_line->next_line != ((void*)0))
 {
  nextline();
  find_pos();
 }
}
