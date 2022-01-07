
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int __unioxx5_define_chan_offset(int chan_num)
{

 if (chan_num < 0 || chan_num > 23)
  return -1;

 return (chan_num >> 3) + 1;
}
