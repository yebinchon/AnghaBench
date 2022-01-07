
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int dummy; } ;


 unsigned long long data2host2 (struct pevent*,void const*) ;
 unsigned long long data2host4 (struct pevent*,void const*) ;
 unsigned long long data2host8 (struct pevent*,void const*) ;

unsigned long long pevent_read_number(struct pevent *pevent,
          const void *ptr, int size)
{
 switch (size) {
 case 1:
  return *(unsigned char *)ptr;
 case 2:
  return data2host2(pevent, ptr);
 case 4:
  return data2host4(pevent, ptr);
 case 8:
  return data2host8(pevent, ptr);
 default:

  return 0;
 }
}
