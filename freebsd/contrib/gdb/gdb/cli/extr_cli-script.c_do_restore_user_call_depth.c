
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
do_restore_user_call_depth (void * call_depth)
{
  int * depth = call_depth;


  (*depth) = 0;
}
