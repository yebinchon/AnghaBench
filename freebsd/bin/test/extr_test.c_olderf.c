
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int newerf (char const*,char const*) ;

__attribute__((used)) static int
olderf (const char *f1, const char *f2)
{
 return (newerf(f2, f1));
}
