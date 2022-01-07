
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FTSENT ;


 int birthcmp (int const*,int const*) ;

int
revbirthcmp(const FTSENT *a, const FTSENT *b)
{

 return (birthcmp(b, a));
}
