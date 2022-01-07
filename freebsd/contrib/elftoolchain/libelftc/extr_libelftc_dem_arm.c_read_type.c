
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_data {unsigned char* p; int cnst; int ptr; int ref; int vec; } ;


 scalar_t__ ELFTC_ISDIGIT (float) ;
 int VEC_PUSH_STR (int *,char*) ;
 int assert (int ) ;
 int read_array (struct demangle_data*) ;
 int read_class (struct demangle_data*) ;
 int read_func_ptr (struct demangle_data*) ;
 int read_memptr (struct demangle_data*) ;
 int read_qual_name (struct demangle_data*) ;

__attribute__((used)) static bool
read_type(struct demangle_data *d)
{

 if (d == ((void*)0))
  return (0);

 assert(d->p != ((void*)0) && "d->p (org str) is NULL");

 while (*d->p == 'U' || *d->p == 'C' || *d->p == 'V' || *d->p == 'S' ||
        *d->p == 'P' || *d->p == 'R' || *d->p == 'A' || *d->p == 'F' ||
        *d->p == 'M') {
  switch (*d->p) {
  case 'U' :
   ++d->p;

   if (VEC_PUSH_STR(&d->vec, "unsigned ") == 0)
    return (0);

   break;
  case 'C' :
   ++d->p;

   if (*d->p == 'P')
    d->cnst = 1;
   else {
    if (VEC_PUSH_STR(&d->vec, "const ") ==
        0)
     return (0);
   }

   break;
  case 'V' :
   ++d->p;

   if (VEC_PUSH_STR(&d->vec, "volatile ") == 0)
    return (0);

   break;
  case 'S' :
   ++d->p;

   if (VEC_PUSH_STR(&d->vec, "signed ") == 0)
    return (0);

   break;
  case 'P' :
   ++d->p;

   if (*d->p == 'F')
    return (read_func_ptr(d));
   else
    d->ptr = 1;

   break;
  case 'R' :
   ++d->p;

   d->ref = 1;

   break;
  case 'F' :
   break;
  case 'A' :
   ++d->p;

   if (read_array(d) == 0)
    return (0);

   break;
  case 'M' :
   ++d->p;

   if (read_memptr(d) == 0)
    return (0);

   break;
  default :
   break;
  }
 }

 if (ELFTC_ISDIGIT(*d->p))
  return (read_class(d));

 switch (*d->p) {
 case 'Q' :
  ++d->p;

  return (read_qual_name(d));
 case 'v' :
  ++d->p;

  return (VEC_PUSH_STR(&d->vec, "void"));
 case 'c' :
  ++d->p;

  return (VEC_PUSH_STR(&d->vec, "char"));
 case 's' :
  ++d->p;

  return (VEC_PUSH_STR(&d->vec, "short"));
 case 'i' :
  ++d->p;

  return (VEC_PUSH_STR(&d->vec, "int"));
 case 'l' :
  ++d->p;

  return (VEC_PUSH_STR(&d->vec, "long"));
 case 'f' :
  ++d->p;

  return (VEC_PUSH_STR(&d->vec, "float"));
 case 'd':
  ++d->p;

  return (VEC_PUSH_STR(&d->vec, "double"));
 case 'r':
  ++d->p;

  return (VEC_PUSH_STR(&d->vec, "long double"));
 case 'e':
  ++d->p;

  return (VEC_PUSH_STR(&d->vec, "..."));
 default:
  return (0);
 };


 return (0);
}
