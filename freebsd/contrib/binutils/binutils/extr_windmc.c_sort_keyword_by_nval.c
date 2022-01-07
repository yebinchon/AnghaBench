
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int unichar ;
typedef int rc_uint_type ;
struct TYPE_2__ {scalar_t__ nval; int usz; } ;
typedef TYPE_1__ mc_keyword ;


 int memcmp (int ,int ,int) ;
 int unichar_len (int ) ;

__attribute__((used)) static int
sort_keyword_by_nval (const void *l, const void *r)
{
  const mc_keyword *l1 = *((const mc_keyword **)l);
  const mc_keyword *r1 = *((const mc_keyword **)r);
  rc_uint_type len1, len2;
  int e;

  if (l == r)
    return 0;
  if (l1->nval != r1->nval)
    {
      if (l1->nval < r1->nval)
 return -1;
      return 1;
    }
  len1 = unichar_len (l1->usz);
  len2 = unichar_len (r1->usz);
  if (len1 <= len2)
    e = memcmp (l1->usz, r1->usz, sizeof (unichar) * len1);
  else
    e = memcmp (l1->usz, r1->usz, sizeof (unichar) * len2);
  if (e)
    return e;
  if (len1 < len2)
    return -1;
  else if (len1 > len2)
    return 1;
  return 0;
}
