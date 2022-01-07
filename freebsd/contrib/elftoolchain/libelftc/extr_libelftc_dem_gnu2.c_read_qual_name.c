
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_data {int* p; int vec; } ;


 int VEC_PUSH_STR (int *,char*) ;
 int assert (int) ;
 int read_class (struct demangle_data*) ;

__attribute__((used)) static bool
read_qual_name(struct demangle_data *d)
{
 int i;
 char num;

 if (d == ((void*)0))
  return (0);

 assert(d->p != ((void*)0) && "d->p (org str) is NULL");
 assert(*d->p > 48 && *d->p < 58 && "*d->p not in ASCII numeric range");

 num = *d->p - 48;

 assert(num > 0);

 ++d->p;
 for (i = 0; i < num ; ++i) {
  if (read_class(d) == 0)
   return (0);

  if (VEC_PUSH_STR(&d->vec, "::") == 0)
   return (0);
 }

 if (*d->p != '\0')
  d->p = d->p + 2;

 return (1);
}
