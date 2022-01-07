
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;



__attribute__((used)) static void
mips_promote_ready (rtx *ready, int lower, int higher)
{
  rtx new_head;
  int i;

  new_head = ready[lower];
  for (i = lower; i < higher; i++)
    ready[i] = ready[i + 1];
  ready[i] = new_head;
}
