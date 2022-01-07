
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int dummy; } ;


 unsigned long long __data2host8 (struct pevent*,unsigned long long) ;
 int read_or_die (unsigned long long*,int) ;

__attribute__((used)) static unsigned long long read8(struct pevent *pevent)
{
 unsigned long long data;

 read_or_die(&data, 8);
 return __data2host8(pevent, data);
}
