
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long ERR ;
 char* errmsg ;
 long get_line_node_addr (int ) ;
 int islower (unsigned char) ;
 int * mark ;

long
get_marked_node_addr(int n)
{
 if (!islower((unsigned char)n)) {
  errmsg = "invalid mark character";
  return ERR;
 }
 return get_line_node_addr(mark[n - 'a']);
}
