
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int * fopen (char const*,char const*) ;
 int perror_fatal (char const*) ;

__attribute__((used)) static FILE *
ck_fopen (char const *fname, char const *type)
{
  FILE *r = fopen (fname, type);
  if (! r)
    perror_fatal (fname);
  return r;
}
