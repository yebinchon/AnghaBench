
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int dummy; } ;


 unsigned int __data2host4 (struct pevent*,unsigned int) ;
 int read_or_die (unsigned int*,int) ;

__attribute__((used)) static unsigned int read4(struct pevent *pevent)
{
 unsigned int data;

 read_or_die(&data, 4);
 return __data2host4(pevent, data);
}
