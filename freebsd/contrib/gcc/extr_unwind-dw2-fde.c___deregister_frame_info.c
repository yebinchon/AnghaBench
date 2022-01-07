
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* __deregister_frame_info_bases (void const*) ;

void *
__deregister_frame_info (const void *begin)
{
  return __deregister_frame_info_bases (begin);
}
