
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ intmax_t ;


 scalar_t__ getq (char const*) ;

__attribute__((used)) static int
intcmp (const char *s1, const char *s2)
{
 intmax_t q1, q2;


 q1 = getq(s1);
 q2 = getq(s2);

 if (q1 > q2)
  return 1;

 if (q1 < q2)
  return -1;

 return 0;
}
