
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {scalar_t__ host_bigendian; scalar_t__ file_bigendian; } ;



__attribute__((used)) static inline unsigned int
__data2host4(struct pevent *pevent, unsigned int data)
{
 unsigned int swap;

 if (pevent->host_bigendian == pevent->file_bigendian)
  return data;

 swap = ((data & 0xffULL) << 24) |
  ((data & (0xffULL << 8)) << 8) |
  ((data & (0xffULL << 16)) >> 8) |
  ((data & (0xffULL << 24)) >> 24);

 return swap;
}
