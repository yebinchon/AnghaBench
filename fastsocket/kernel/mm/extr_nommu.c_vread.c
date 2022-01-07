
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,unsigned long) ;

long vread(char *buf, char *addr, unsigned long count)
{
 memcpy(buf, addr, count);
 return count;
}
