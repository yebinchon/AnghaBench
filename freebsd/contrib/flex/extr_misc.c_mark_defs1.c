
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* action_array ;
 size_t action_index ;
 size_t action_offset ;
 scalar_t__ defs1_offset ;
 size_t prolog_offset ;

void mark_defs1 ()
{
 defs1_offset = 0;
 action_array[action_index++] = '\0';
 action_offset = prolog_offset = action_index;
 action_array[action_index] = '\0';
}
