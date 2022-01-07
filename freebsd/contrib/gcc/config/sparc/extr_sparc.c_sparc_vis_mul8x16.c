
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
sparc_vis_mul8x16 (int e8, int e16)
{
  return (e8 * e16 + 128) / 256;
}
