
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cur_insn_uid ;

int
get_max_uid (void)
{
  return cur_insn_uid;
}
