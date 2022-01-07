
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ seq_stack ;

int
in_sequence_p (void)
{
  return seq_stack != 0;
}
