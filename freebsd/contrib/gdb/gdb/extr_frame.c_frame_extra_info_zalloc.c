
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {struct frame_extra_info* extra_info; } ;
struct frame_extra_info {int dummy; } ;


 struct frame_extra_info* frame_obstack_zalloc (long) ;

struct frame_extra_info *
frame_extra_info_zalloc (struct frame_info *fi, long size)
{
  fi->extra_info = frame_obstack_zalloc (size);
  return fi->extra_info;
}
