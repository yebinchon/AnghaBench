
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u32 ;



__attribute__((used)) static __u32 hash( const char* name)
{
 __u32 h = 0;
 __u32 g;

 while(*name) {
  h = (h<<4) + *name++;
  if ((g = (h & 0xf0000000)))
   h ^=g>>24;
  h &=~g;
 }
 return h;
}
