
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ sym_change_count ;
 int sym_set_change_count (scalar_t__) ;

void sym_add_change_count(int count)
{
 sym_set_change_count(count + sym_change_count);
}
