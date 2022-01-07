
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct demangle_data {char* p; int ptr; int ref; int cnst; int vec; } ;


 int CPP_DEMANGLE_ARM_TRY ;
 int VEC_PUSH_STR (int *,char*) ;
 int dest_demangle_data (struct demangle_data*) ;
 int free (char*) ;
 int init_demangle_data (struct demangle_data*) ;
 int read_type (struct demangle_data*) ;
 char* vector_str_get_flat (int *,size_t*) ;
 int vector_str_push (int *,char*,size_t) ;

__attribute__((used)) static bool
read_func_ptr(struct demangle_data *d)
{
 struct demangle_data fptr;
 size_t arg_len, rtn_len;
 char *arg_type, *rtn_type;
 int lim;

 if (d == ((void*)0))
  return (0);

 if (init_demangle_data(&fptr) == 0)
  return (0);

 fptr.p = d->p + 1;
 lim = 0;
 arg_type = ((void*)0);
 rtn_type = ((void*)0);

 for (;;) {
  if (read_type(&fptr) == 0) {
   dest_demangle_data(&fptr);

   return (0);
  }

  if (fptr.ptr == 1) {
   if (VEC_PUSH_STR(&fptr.vec, "*") == 0) {
    dest_demangle_data(&fptr);

    return (0);
   }

   fptr.ptr = 0;
  }

  if (fptr.ref == 1) {
   if (VEC_PUSH_STR(&fptr.vec, "&") == 0) {
    dest_demangle_data(&fptr);

    return (0);
   }

   fptr.ref = 0;
  }

  if (fptr.cnst == 1) {
   if (VEC_PUSH_STR(&fptr.vec, " const") == 0) {
    dest_demangle_data(&fptr);

    return (0);
   }

   fptr.cnst = 0;
  }

  if (*fptr.p == '_')
   break;

  if (VEC_PUSH_STR(&fptr.vec, ", ") == 0) {
   dest_demangle_data(&fptr);

   return (0);
  }

  if (++lim > CPP_DEMANGLE_ARM_TRY) {

   dest_demangle_data(&fptr);

   return (0);
  }
 }

 arg_type = vector_str_get_flat(&fptr.vec, &arg_len);

 d->p = fptr.p + 1;

 dest_demangle_data(&fptr);

 if (init_demangle_data(&fptr) == 0) {
  free(arg_type);

  return (0);
 }

 fptr.p = d->p;
 lim = 0;

 if (read_type(&fptr) == 0) {
  free(arg_type);
  dest_demangle_data(&fptr);

  return (0);
 }

 rtn_type = vector_str_get_flat(&fptr.vec, &rtn_len);
 d->p = fptr.p;


 dest_demangle_data(&fptr);

 if (vector_str_push(&d->vec, rtn_type, rtn_len) == 0) {
  free(rtn_type);
  free(arg_type);

  return (0);
 }

 free(rtn_type);

 if (VEC_PUSH_STR(&d->vec, " (*)(") == 0) {
  free(arg_type);

  return (0);
 }

 if (vector_str_push(&d->vec, arg_type, arg_len) == 0) {
  free(arg_type);

  return (0);
 }

 free(arg_type);

 return (VEC_PUSH_STR(&d->vec, ")"));
}
