
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line_t ;


 size_t active_last ;
 int ** active_list ;
 size_t active_ptr ;

line_t *
next_active_node(void)
{
 while (active_ptr < active_last && active_list[active_ptr] == ((void*)0))
  active_ptr++;
 return (active_ptr < active_last) ? active_list[active_ptr++] : ((void*)0);
}
