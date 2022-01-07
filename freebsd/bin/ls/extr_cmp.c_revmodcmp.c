
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FTSENT ;


 int modcmp (int const*,int const*) ;

int
revmodcmp(const FTSENT *a, const FTSENT *b)
{

 return (modcmp(b, a));
}
