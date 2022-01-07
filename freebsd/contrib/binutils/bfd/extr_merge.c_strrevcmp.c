
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ string; } ;
struct sec_merge_hash_entry {unsigned int len; TYPE_1__ root; } ;



__attribute__((used)) static int
strrevcmp (const void *a, const void *b)
{
  struct sec_merge_hash_entry *A = *(struct sec_merge_hash_entry **) a;
  struct sec_merge_hash_entry *B = *(struct sec_merge_hash_entry **) b;
  unsigned int lenA = A->len;
  unsigned int lenB = B->len;
  const unsigned char *s = (const unsigned char *) A->root.string + lenA - 1;
  const unsigned char *t = (const unsigned char *) B->root.string + lenB - 1;
  int l = lenA < lenB ? lenA : lenB;

  while (l)
    {
      if (*s != *t)
 return (int) *s - (int) *t;
      s--;
      t--;
      l--;
    }
  return lenA - lenB;
}
