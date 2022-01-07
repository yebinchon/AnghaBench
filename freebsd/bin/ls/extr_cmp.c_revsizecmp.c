
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FTSENT ;


 int sizecmp (int const*,int const*) ;

int
revsizecmp(const FTSENT *a, const FTSENT *b)
{

 return (sizecmp(b, a));
}
