
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct indexentry {scalar_t__ val; } ;



__attribute__((used)) static int
cmpindexentry (const void *a, const void *b)
{
  const struct indexentry *contestantA = a;
  const struct indexentry *contestantB = b;

  if (contestantA->val < contestantB->val)
    return -1;
  else if (contestantA->val > contestantB->val)
    return 1;
  else
    return 0;
}
