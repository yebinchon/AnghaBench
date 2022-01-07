
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int left (int ) ;
 char* point ;
 int position ;
 int right (int ) ;

void
prev_word()
{
 if (position != 1)
 {
  if ((position != 1) && ((point[-1] == ' ') || (point[-1] == '\t')))
  {
   while ((position != 1) && ((*point != ' ') && (*point != '\t')))
    left(TRUE);
  }
  while ((position != 1) && ((*point == ' ') || (*point == '\t')))
   left(TRUE);
  while ((position != 1) && ((*point != ' ') && (*point != '\t')))
   left(TRUE);
  if ((position != 1) && ((*point == ' ') || (*point == '\t')))
   right(TRUE);
 }
 else
  left(TRUE);
}
