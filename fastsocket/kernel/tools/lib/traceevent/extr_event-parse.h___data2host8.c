
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {scalar_t__ host_bigendian; scalar_t__ file_bigendian; } ;



__attribute__((used)) static inline unsigned long long
__data2host8(struct pevent *pevent, unsigned long long data)
{
 unsigned long long swap;

 if (pevent->host_bigendian == pevent->file_bigendian)
  return data;

 swap = ((data & 0xffULL) << 56) |
  ((data & (0xffULL << 8)) << 40) |
  ((data & (0xffULL << 16)) << 24) |
  ((data & (0xffULL << 24)) << 8) |
  ((data & (0xffULL << 32)) >> 8) |
  ((data & (0xffULL << 40)) >> 24) |
  ((data & (0xffULL << 48)) >> 40) |
  ((data & (0xffULL << 56)) >> 56);

 return swap;
}
