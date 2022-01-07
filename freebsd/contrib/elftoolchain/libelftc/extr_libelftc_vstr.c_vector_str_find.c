
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_str {size_t size; int * container; } ;


 scalar_t__ strncmp (int ,char const*,size_t) ;

int
vector_str_find(const struct vector_str *v, const char *o, size_t l)
{
 size_t i;

 if (v == ((void*)0) || o == ((void*)0))
  return (-1);

 for (i = 0; i < v->size; ++i)
  if (strncmp(v->container[i], o, l) == 0)
   return (1);

 return (0);
}
