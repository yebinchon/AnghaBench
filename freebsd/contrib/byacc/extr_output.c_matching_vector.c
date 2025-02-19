
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__** froms ;
 int nstates ;
 int* order ;
 int* tally ;
 scalar_t__** tos ;
 int* width ;

__attribute__((used)) static int
matching_vector(int vector)
{
    int i;
    int j;
    int k;
    int t;
    int w;
    int match;
    int prev;

    i = order[vector];
    if (i >= 2 * nstates)
 return (-1);

    t = tally[i];
    w = width[i];

    for (prev = vector - 1; prev >= 0; prev--)
    {
 j = order[prev];
 if (width[j] != w || tally[j] != t)
     return (-1);

 match = 1;
 for (k = 0; match && k < t; k++)
 {
     if (tos[j][k] != tos[i][k] || froms[j][k] != froms[i][k])
  match = 0;
 }

 if (match)
     return (j);
    }

    return (-1);
}
