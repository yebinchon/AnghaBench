
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t size; } ;
struct TYPE_8__ {char* buf; size_t size; } ;
struct demangle_data {char const* p; int type; int class_name; int ptr; int ref; int cnst; int array; int cnst_fn; TYPE_1__ vec; TYPE_1__ arg; TYPE_5__ array_str; } ;


 unsigned int CPP_DEMANGLE_GNU2_TRY ;
 int VEC_PUSH_STR (TYPE_1__*,char*) ;
 int dest_cstring (TYPE_5__*) ;
 int dest_demangle_data (struct demangle_data*) ;
 int free (char*) ;
 int init_demangle_data (struct demangle_data*) ;
 int push_CTDT (char*,int,TYPE_1__*) ;
 int read_func_name (struct demangle_data*) ;
 int read_subst (struct demangle_data*) ;
 int read_subst_iter (struct demangle_data*) ;
 int read_type (struct demangle_data*) ;
 char* vector_str_get_flat (TYPE_1__*,int *) ;
 int vector_str_push (TYPE_1__*,char*,size_t) ;
 char* vector_str_substr (TYPE_1__*,size_t,int,size_t*) ;

char *
cpp_demangle_gnu2(const char *org)
{
 struct demangle_data d;
 size_t arg_begin, arg_len;
 unsigned int try;
 char *rtn, *arg;

 if (org == ((void*)0))
  return (((void*)0));

 if (init_demangle_data(&d) == 0)
  return (((void*)0));

 try = 0;
 rtn = ((void*)0);

 d.p = org;
 if (read_func_name(&d) == 0)
  goto clean;

 switch (d.type) {
 case 135 :
 case 134 :
  break;

 case 133 :
  if (push_CTDT("::", 2, &d.vec) == 0)
   goto clean;

                break;
 case 132 :
  if (push_CTDT("::~", 3, &d.vec) == 0)
   goto clean;

  if (VEC_PUSH_STR(&d.vec, "(void)") == 0)
   goto clean;

  goto flat;
 case 129 :
 case 131 :
 case 130 :
 case 128 :
  goto flat;
 }

 if (*d.p == 'F')
  ++d.p;
 else if (*d.p == '\0') {
  if (d.class_name == 1) {
   if (VEC_PUSH_STR(&d.vec, "(void)") == 0)
    goto clean;

   goto flat;
  } else
   goto clean;
 }


 if (VEC_PUSH_STR(&d.vec, "(") == 0)
  goto clean;

 for (;;) {
  if (*d.p == 'T') {
   const int rtn_subst = read_subst(&d);

   if (rtn_subst == -1)
    goto clean;
   else if (rtn_subst == 1)
    break;

   continue;
  }

  if (*d.p == 'N') {
   const int rtn_subst_iter = read_subst_iter(&d);

   if (rtn_subst_iter == -1)
    goto clean;
   else if(rtn_subst_iter == 1)
    break;

   continue;
  }

  arg_begin = d.vec.size;

  if (read_type(&d) == 0)
   goto clean;

  if (d.ptr == 1) {
   if (VEC_PUSH_STR(&d.vec, "*") == 0)
    goto clean;

   d.ptr = 0;
  }

  if (d.ref == 1) {
   if (VEC_PUSH_STR(&d.vec, "&") == 0)
    goto clean;

   d.ref = 0;
  }

  if (d.cnst == 1) {
   if (VEC_PUSH_STR(&d.vec, " const") == 0)
    goto clean;

   d.cnst = 0;
  }

  if (d.array == 1) {
   if (vector_str_push(&d.vec, d.array_str.buf,
    d.array_str.size) == 0)
    goto clean;

   dest_cstring(&d.array_str);
   d.array = 0;
  }

  if (*d.p == '\0')
   break;

  if ((arg = vector_str_substr(&d.vec, arg_begin, d.vec.size - 1,
       &arg_len)) == ((void*)0))
   goto clean;

  if (vector_str_push(&d.arg, arg, arg_len) == 0)
   goto clean;

  free(arg);

  if (VEC_PUSH_STR(&d.vec, ", ") == 0)
   goto clean;

  if (++try > CPP_DEMANGLE_GNU2_TRY)
   goto clean;
 }


 if (VEC_PUSH_STR(&d.vec, ")") == 0)
  goto clean;
flat:
 if (d.cnst_fn == 1 && VEC_PUSH_STR(&d.vec, " const") == 0)
  goto clean;

 rtn = vector_str_get_flat(&d.vec, ((void*)0));
clean:
 dest_demangle_data(&d);

 return (rtn);
}
