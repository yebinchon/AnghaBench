
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FTSENT ;


 int statcmp (int const*,int const*) ;

int
revstatcmp(const FTSENT *a, const FTSENT *b)
{

 return (statcmp(b, a));
}
