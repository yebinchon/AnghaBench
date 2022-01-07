
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
 int vector_str_pop (int *) ;
 int vector_str_push (int *,char*,size_t) ;

__attribute__((used)) static bool
read_op_user(struct demangle_data *d)
{
 struct demangle_data from, to;
 size_t from_len, to_len;
 bool rtn;
 char *from_str, *to_str;

 if (d == ((void*)0))
  return (0);

 if (init_demangle_data(&from) == 0)
  return (0);

 rtn = 0;
 from_str = ((void*)0);
 to_str = ((void*)0);
 if (init_demangle_data(&to) == 0)
  goto clean;

 to.p = d->p;
 if (*to.p == 'Q') {
  ++to.p;

  if (read_qual_name(&to) == 0)
   goto clean;


  if (vector_str_pop(&to.vec) == 0)
   goto clean;
 } else {
  if (read_class(&to) == 0)
   goto clean;


  to.p += 2;
 }

 if ((to_str = vector_str_get_flat(&to.vec, &to_len)) == ((void*)0))
  goto clean;

 from.p = to.p;
 if (*from.p == 'Q') {
  ++from.p;

  if (read_qual_name(&from) == 0)
   goto clean;


  if (vector_str_pop(&from.vec) == 0)
   goto clean;
 } else if (read_class(&from) == 0)
   goto clean;

 if ((from_str = vector_str_get_flat(&from.vec, &from_len)) == ((void*)0))
  goto clean;

 if (vector_str_push(&d->vec, from_str, from_len) == 0)
  goto clean;

 if (VEC_PUSH_STR(&d->vec, "::operator ") == 0)
  goto clean;

 if (vector_str_push(&d->vec, to_str, to_len) == 0)
  goto clean;

 rtn = VEC_PUSH_STR(&d->vec, "()");
clean:
 free(to_str);
 free(from_str);
 dest_demangle_data(&to);
 dest_demangle_data(&from);

 return (rtn);
}
