
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int simple_strtoul (char const*,int *,int) ;

__attribute__((used)) static void pod_resolve(const char *buf, short block0, short block1, unsigned char *location)
{
 int value = simple_strtoul(buf, ((void*)0), 10);
 short block = (value < 0x40) ? block0 : block1;
 value &= 0x3f;
 location[0] = block >> 7;
 location[1] = value | (block & 0x7f);
}
