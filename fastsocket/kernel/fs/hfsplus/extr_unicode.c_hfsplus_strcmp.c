
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct hfsplus_unistr {int * unicode; int const length; } ;
typedef int hfsplus_unichr ;


 scalar_t__ be16_to_cpu (int const) ;
 int min (scalar_t__,scalar_t__) ;

int hfsplus_strcmp(const struct hfsplus_unistr *s1,
     const struct hfsplus_unistr *s2)
{
 u16 len1, len2, c1, c2;
 const hfsplus_unichr *p1, *p2;
 int len;

 len1 = be16_to_cpu(s1->length);
 len2 = be16_to_cpu(s2->length);
 p1 = s1->unicode;
 p2 = s2->unicode;

 for (len = min(len1, len2); len > 0; len--) {
  c1 = be16_to_cpu(*p1);
  c2 = be16_to_cpu(*p2);
  if (c1 != c2)
   return c1 < c2 ? -1 : 1;
  p1++;
  p2++;
 }

 return len1 < len2 ? -1 :
        len1 > len2 ? 1 : 0;
}
