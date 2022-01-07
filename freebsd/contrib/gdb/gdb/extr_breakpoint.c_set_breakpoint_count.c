
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONGEST ;


 int breakpoint_count ;
 int builtin_type_int ;
 int lookup_internalvar (char*) ;
 int set_internalvar (int ,int ) ;
 int value_from_longest (int ,int ) ;

void
set_breakpoint_count (int num)
{
  breakpoint_count = num;
  set_internalvar (lookup_internalvar ("bpnum"),
     value_from_longest (builtin_type_int, (LONGEST) num));
}
