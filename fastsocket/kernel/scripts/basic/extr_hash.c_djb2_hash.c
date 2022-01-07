
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DYNAMIC_DEBUG_HASH_BITS ;

__attribute__((used)) static unsigned int djb2_hash(char *str)
{
 unsigned long hash = 5381;
 int c;

 c = *str;
 while (c) {
  hash = ((hash << 5) + hash) + c;
  c = *++str;
 }
 return (unsigned int)(hash & ((1 << DYNAMIC_DEBUG_HASH_BITS) - 1));
}
