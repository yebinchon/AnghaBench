
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
iso_8859_to_control (void *baton, int c, int *ctrl_char)
{
  *ctrl_char = (c & 0200) | (c & 037);
  return 1;
}
