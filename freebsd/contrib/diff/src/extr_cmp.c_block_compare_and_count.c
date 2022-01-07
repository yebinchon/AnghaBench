
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char word ;
typedef size_t off_t ;


 char CHAR_BIT ;

__attribute__((used)) static size_t
block_compare_and_count (word const *p0, word const *p1, off_t *count)
{
  word l;
  word const *l0, *l1;
  char const *c0, *c1;
  size_t cnt = 0;
  word nnnn;
  int i;

  nnnn = 0;
  for (i = 0; i < sizeof nnnn; i++)
    nnnn = (nnnn << CHAR_BIT) | '\n';




  for (l0 = p0, l1 = p1; (l = *l0) == *l1; l0++, l1++)
    {
      l ^= nnnn;
      for (i = 0; i < sizeof l; i++)
 {
   unsigned char uc = l;
   cnt += ! uc;
   l >>= CHAR_BIT;
 }
    }



  for (c0 = (char const *) l0, c1 = (char const *) l1;
       *c0 == *c1;
       c0++, c1++)
    cnt += *c0 == '\n';

  *count += cnt;
  return c0 - (char const *) p0;
}
