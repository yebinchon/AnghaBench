
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vector_str {scalar_t__ size; } ;
struct type_delimit {int paren; int firstp; } ;
struct TYPE_2__ {int size; } ;
struct cpp_demangle_data {char* cur; int is_tmpl; struct vector_str output; scalar_t__ mem_rref; scalar_t__ mem_ref; scalar_t__ mem_rst; scalar_t__ mem_cst; scalar_t__ mem_vat; struct vector_str* cur_output; TYPE_1__ subst; } ;
typedef int ssize_t ;


 int CPP_DEMANGLE_TRY_LIMIT ;
 int VEC_PUSH_STR (struct vector_str*,char*) ;
 int cpp_demangle_data_dest (struct cpp_demangle_data*) ;
 int cpp_demangle_data_init (struct cpp_demangle_data*,char const*) ;
 int cpp_demangle_read_encoding (struct cpp_demangle_data*) ;
 int cpp_demangle_read_type (struct cpp_demangle_data*,struct type_delimit*) ;
 char* malloc (int) ;
 int snprintf (char*,int,char*,char const*) ;
 int strlen (char const*) ;
 int strncmp (char const*,char*,int) ;
 int vector_str_dest (struct vector_str*) ;
 char* vector_str_get_flat (struct vector_str*,size_t*) ;
 int vector_str_init (struct vector_str*) ;
 int vector_str_pop (TYPE_1__*) ;
 int vector_str_push_vector_head (struct vector_str*,struct vector_str*) ;

char *
cpp_demangle_gnu3(const char *org)
{
 struct cpp_demangle_data ddata;
 struct vector_str ret_type;
 struct type_delimit td;
 ssize_t org_len;
 unsigned int limit;
 char *rtn;
 bool has_ret, more_type;

 if (org == ((void*)0) || (org_len = strlen(org)) < 2)
  return (((void*)0));

 if (org_len > 11 && !strncmp(org, "_GLOBAL__I_", 11)) {
  if ((rtn = malloc(org_len + 19)) == ((void*)0))
   return (((void*)0));
  snprintf(rtn, org_len + 19,
      "global constructors keyed to %s", org + 11);
  return (rtn);
 }

 if (org[0] != '_' || org[1] != 'Z')
  return (((void*)0));

 if (!cpp_demangle_data_init(&ddata, org + 2))
  return (((void*)0));

 rtn = ((void*)0);
 has_ret = more_type = 0;

 if (!cpp_demangle_read_encoding(&ddata))
  goto clean;




 if (*ddata.cur != 0 && ddata.subst.size >= 1) {
  if (!vector_str_pop(&ddata.subst))
   goto clean;
 }

 td.paren = 0;
 td.firstp = 1;
 limit = 0;






 if (ddata.is_tmpl) {
  ddata.is_tmpl = 0;
  if (!vector_str_init(&ret_type))
   goto clean;
  ddata.cur_output = &ret_type;
  has_ret = 1;
 }

 while (*ddata.cur != '\0') {



  if (*ddata.cur == '@' && *(ddata.cur + 1) == '@')
   break;

  if (has_ret) {

   if (!cpp_demangle_read_type(&ddata, ((void*)0)))
    goto clean;
  } else {

   if (!cpp_demangle_read_type(&ddata, &td))
    goto clean;
  }

  if (has_ret) {

   if (!VEC_PUSH_STR(&ret_type, " "))
    goto clean;
   if (!vector_str_push_vector_head(&ddata.output,
       &ret_type))
    goto clean;
   ddata.cur_output = &ddata.output;
   vector_str_dest(&ret_type);
   has_ret = 0;
   more_type = 1;
  } else if (more_type)
   more_type = 0;
  if (limit++ > CPP_DEMANGLE_TRY_LIMIT)
   goto clean;
 }
 if (more_type)
  goto clean;

 if (ddata.output.size == 0)
  goto clean;
 if (td.paren && !VEC_PUSH_STR(&ddata.output, ")"))
  goto clean;
 if (ddata.mem_vat && !VEC_PUSH_STR(&ddata.output, " volatile"))
  goto clean;
 if (ddata.mem_cst && !VEC_PUSH_STR(&ddata.output, " const"))
  goto clean;
 if (ddata.mem_rst && !VEC_PUSH_STR(&ddata.output, " restrict"))
  goto clean;
 if (ddata.mem_ref && !VEC_PUSH_STR(&ddata.output, " &"))
  goto clean;
 if (ddata.mem_rref && !VEC_PUSH_STR(&ddata.output, " &&"))
  goto clean;

 rtn = vector_str_get_flat(&ddata.output, (size_t *) ((void*)0));

clean:
 if (has_ret)
  vector_str_dest(&ret_type);

 cpp_demangle_data_dest(&ddata);

 return (rtn);
}
