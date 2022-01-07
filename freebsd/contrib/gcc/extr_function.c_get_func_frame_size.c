
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct function {int x_frame_offset; } ;
typedef int HOST_WIDE_INT ;


 scalar_t__ FRAME_GROWS_DOWNWARD ;

__attribute__((used)) static HOST_WIDE_INT
get_func_frame_size (struct function *f)
{
  if (FRAME_GROWS_DOWNWARD)
    return -f->x_frame_offset;
  else
    return f->x_frame_offset;
}
