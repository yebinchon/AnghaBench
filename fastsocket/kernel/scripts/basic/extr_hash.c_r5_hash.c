
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DYNAMIC_DEBUG_HASH_BITS ;

__attribute__((used)) static unsigned int r5_hash(char *str)
{
 unsigned long hash = 0;
 int c;

 c = *str;
 while (c) {
  hash = (hash + (c << 4) + (c >> 4)) * 11;
  c = *++str;
 }
 return (unsigned int)(hash & ((1 << DYNAMIC_DEBUG_HASH_BITS) - 1));
}
