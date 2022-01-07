
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int HT_HASHFINISH (unsigned int,size_t) ;
 unsigned int HT_HASHSTEP (unsigned int,int ) ;

__attribute__((used)) static unsigned int
calc_hash (const unsigned char *str, size_t len)
{
  size_t n = len;
  unsigned int r = 0;

  while (n--)
    r = HT_HASHSTEP (r, *str++);

  return HT_HASHFINISH (r, len);
}
