
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FNV_1_32 ;
 unsigned int FNV_P_32 ;

__attribute__((used)) static unsigned int fnvhash32(const void *buf, size_t buflen)
{
 const unsigned char *p, *end = (const unsigned char *)buf + buflen;
 unsigned int hash = FNV_1_32;

 for (p = buf; p < end; p++) {
  hash *= FNV_P_32;
  hash ^= (unsigned int)*p;
 }

 return hash;
}
