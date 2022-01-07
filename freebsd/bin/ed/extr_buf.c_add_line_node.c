
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line_t ;


 int INSQUE (int *,int *) ;
 int addr_last ;
 int current_addr ;
 int * get_addressed_line_node (int ) ;

void
add_line_node(line_t *lp)
{
 line_t *cp;

 cp = get_addressed_line_node(current_addr);
 INSQUE(lp, cp);
 addr_last++;
 current_addr++;
}
