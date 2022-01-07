
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int partial_crc32 (char const*,int) ;

__attribute__((used)) static unsigned long crc32(const char *s)
{
 return partial_crc32(s, 0xffffffff) ^ 0xffffffff;
}
