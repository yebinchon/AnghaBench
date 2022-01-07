
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line_t ;


 int ERR ;
 char* errmsg ;
 int islower (unsigned char) ;
 int ** mark ;
 int markno ;

int
mark_line_node(line_t *lp, int n)
{
 if (!islower((unsigned char)n)) {
  errmsg = "invalid mark character";
  return ERR;
 } else if (mark[n - 'a'] == ((void*)0))
  markno++;
 mark[n - 'a'] = lp;
 return 0;
}
