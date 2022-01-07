
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fputs (char const*,int *) ;

__attribute__((used)) static inline int
ufputs (const unsigned char *s, FILE *f)
{
  return fputs ((const char *)s, f);
}
