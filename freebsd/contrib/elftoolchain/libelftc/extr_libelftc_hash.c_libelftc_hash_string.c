
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int FNV_OFFSET ;
 unsigned int FNV_PRIME ;

unsigned int
libelftc_hash_string(const char *s)
{
 char c;
 unsigned int hash;

 for (hash = FNV_OFFSET; (c = *s) != '\0'; s++) {
  hash ^= c;
  hash *= FNV_PRIME;
 }

 return (hash);
}
