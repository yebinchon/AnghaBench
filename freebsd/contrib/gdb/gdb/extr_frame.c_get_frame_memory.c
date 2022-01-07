
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 int read_memory (int ,void*,int) ;

void
get_frame_memory (struct frame_info *this_frame, CORE_ADDR addr, void *buf,
    int len)
{
  read_memory (addr, buf, len);
}
