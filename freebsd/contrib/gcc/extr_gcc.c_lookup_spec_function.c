
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spec_function {int * name; } ;


 struct spec_function* static_spec_functions ;
 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static const struct spec_function *
lookup_spec_function (const char *name)
{
  const struct spec_function *sf;

  for (sf = static_spec_functions; sf->name != ((void*)0); sf++)
    if (strcmp (sf->name, name) == 0)
      return sf;

  return ((void*)0);
}
