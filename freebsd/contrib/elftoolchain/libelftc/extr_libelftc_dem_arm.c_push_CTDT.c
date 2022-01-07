
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_str {int size; char** container; } ;


 int VEC_PUSH_STR (struct vector_str*,char*) ;
 int assert (int) ;
 int vector_str_push (struct vector_str*,char const*,size_t) ;

__attribute__((used)) static bool
push_CTDT(const char *s, size_t l, struct vector_str *v)
{

 if (s == ((void*)0) || l == 0 || v == ((void*)0))
  return (0);

 if (vector_str_push(v, s, l) == 0)
  return (0);

 assert(v->size > 1);
 if (VEC_PUSH_STR(v, v->container[v->size - 2]) == 0)
  return (0);

 if (VEC_PUSH_STR(v, "()") == 0)
  return (0);

 return (1);
}
