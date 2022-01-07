
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_test {scalar_t__ expr; } ;
typedef unsigned char hashval_t ;



hashval_t
hash_c_test (const void *x)
{
  const struct c_test *a = (const struct c_test *) x;
  const unsigned char *base, *s = (const unsigned char *) a->expr;
  hashval_t hash;
  unsigned char c;
  unsigned int len;

  base = s;
  hash = 0;

  while ((c = *s++) != '\0')
    {
      hash += c + (c << 17);
      hash ^= hash >> 2;
    }

  len = s - base;
  hash += len + (len << 17);
  hash ^= hash >> 2;

  return hash;
}
