
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text {struct text* next_line; } ;


 int absolute_lin ;
 struct text* curr_line ;
 struct text* first_line ;

void
from_top()
{
 struct text *tmpline = first_line;
 int x = 1;

 while ((tmpline != ((void*)0)) && (tmpline != curr_line))
 {
  x++;
  tmpline = tmpline->next_line;
 }
 absolute_lin = x;
}
