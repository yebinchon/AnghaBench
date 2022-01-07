
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line_t ;


 int MAXMARK ;
 int ** mark ;
 scalar_t__ markno ;

void
unmark_line_node(line_t *lp)
{
 int i;

 for (i = 0; markno && i < MAXMARK; i++)
  if (mark[i] == lp) {
   mark[i] = ((void*)0);
   markno--;
  }
}
