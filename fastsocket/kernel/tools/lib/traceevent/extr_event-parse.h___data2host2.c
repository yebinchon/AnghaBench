
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {scalar_t__ host_bigendian; scalar_t__ file_bigendian; } ;



__attribute__((used)) static inline unsigned short
__data2host2(struct pevent *pevent, unsigned short data)
{
 unsigned short swap;

 if (pevent->host_bigendian == pevent->file_bigendian)
  return data;

 swap = ((data & 0xffULL) << 8) |
  ((data & (0xffULL << 8)) >> 8);

 return swap;
}
