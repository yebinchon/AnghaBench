
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_str {size_t size; int * container; } ;


 int assert (int) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static size_t
get_strlen_sum(const struct vector_str *v)
{
 size_t i, len = 0;

 if (v == ((void*)0))
  return (0);

 assert(v->size > 0);

 for (i = 0; i < v->size; ++i)
  len += strlen(v->container[i]);

 return (len);
}
