
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int * name; } ;


 scalar_t__ strcmp (int *,char const*) ;
 struct test const* tests ;

__attribute__((used)) static const struct test *find_test(const char *name)
{
  if (name == ((void*)0))
    {
      return tests + 0;
    }
  else
    {
      for (const struct test *p = tests; p->name != ((void*)0); p++)
 {
          if (strcmp(p->name, name) == 0)
     {
              return p;
     }
 }
    }

  return ((void*)0);
}
