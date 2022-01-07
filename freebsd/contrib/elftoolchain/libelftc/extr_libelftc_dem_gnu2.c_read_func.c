
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_data {char* p; int cnst_fn; int vec; } ;


 scalar_t__ ELFTC_ISDIGIT (char) ;
 int VEC_PUSH_STR (int *,char*) ;
 int assert (int) ;
 int read_class (struct demangle_data*) ;
 int read_qual_name (struct demangle_data*) ;
 char* strstr (char*,char*) ;
 int vector_str_push (int *,char const*,size_t) ;

__attribute__((used)) static bool
read_func(struct demangle_data *d)
{
 size_t len;
 const char *name;
 char *delim;

 if (d == ((void*)0))
  return (0);

 assert(d->p != ((void*)0) && "d->p (org str) is NULL");
 if ((delim = strstr(d->p, "__")) == ((void*)0))
  return (0);

 len = delim - d->p;
 assert(len != 0);

 name = d->p;

 d->p = delim + 2;

 if (*d->p == 'C') {
  ++d->p;

  d->cnst_fn = 1;
 }

 if (*d->p == 'Q' && ELFTC_ISDIGIT(*(d->p + 1))) {
  ++d->p;

  if (read_qual_name(d) == 0)
   return (0);
 } else if (ELFTC_ISDIGIT(*d->p)) {
  if (read_class(d) == 0)
   return (0);

  if (VEC_PUSH_STR(&d->vec, "::") == 0)
   return (0);
 }

 return (vector_str_push(&d->vec, name, len));
}
