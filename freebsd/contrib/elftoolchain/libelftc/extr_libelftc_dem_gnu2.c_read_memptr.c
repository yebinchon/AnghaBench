
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_data {char* p; int vec; } ;


 int VEC_PUSH_STR (int *,char*) ;
 int dest_demangle_data (struct demangle_data*) ;
 int free (char*) ;
 int init_demangle_data (struct demangle_data*) ;
 int read_class (struct demangle_data*) ;
 int read_qual_name (struct demangle_data*) ;
 char* vector_str_get_flat (int *,size_t*) ;
 int vector_str_push (int *,char*,size_t) ;

__attribute__((used)) static bool
read_memptr(struct demangle_data *d)
{
 struct demangle_data mptr;
 size_t len;
 bool rtn;
 char *mptr_str;

 if (d == ((void*)0) || d->p == ((void*)0))
  return (0);

 if (init_demangle_data(&mptr) == 0)
  return (0);

 rtn = 0;
 mptr_str = ((void*)0);

 mptr.p = d->p;
 if (*mptr.p == 'Q') {
  ++mptr.p;

  if (read_qual_name(&mptr) == 0)
   goto clean;
 } else if (read_class(&mptr) == 0)
   goto clean;

 d->p = mptr.p;

 if ((mptr_str = vector_str_get_flat(&mptr.vec, &len)) == ((void*)0))
  goto clean;

 if (vector_str_push(&d->vec, mptr_str, len) == 0)
  goto clean;

 if (VEC_PUSH_STR(&d->vec, "::*") == 0)
  goto clean;

 rtn = 1;
clean:
 free(mptr_str);
 dest_demangle_data(&mptr);

 return (rtn);
}
