
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 scalar_t__ end_reached ;
 scalar_t__ page_length ;
 int print_line (int *,int,int) ;
 int wnoutrefresh (int *) ;

__attribute__((used)) static void print_page(WINDOW * win, int height, int width)
{
 int i, passed_end = 0;

 page_length = 0;
 for (i = 0; i < height; i++) {
  print_line(win, i, width);
  if (!passed_end)
   page_length++;
  if (end_reached && !passed_end)
   passed_end = 1;
 }
 wnoutrefresh(win);
}
