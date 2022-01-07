
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int level; } ;



int
frame_relative_level (struct frame_info *fi)
{
  if (fi == ((void*)0))
    return -1;
  else
    return fi->level;
}
