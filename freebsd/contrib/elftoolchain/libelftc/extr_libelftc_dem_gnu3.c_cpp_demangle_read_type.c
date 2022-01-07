
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vector_str {size_t size; } ;
struct vector_type_qualifier {struct vector_str ext_name; } ;
struct type_delimit {int paren; int firstp; } ;
struct TYPE_2__ {int size; } ;
struct cpp_demangle_data {char* cur; int ref_qualifier; struct vector_str subst; void* ref_qualifier_type; int is_functype; TYPE_1__ output; struct vector_str* cur_output; } ;


 int DEM_PUSH_STR (struct cpp_demangle_data*,char*) ;
 void* TYPE_CMX ;
 void* TYPE_CST ;
 void* TYPE_EXT ;
 void* TYPE_IMG ;
 void* TYPE_PTR ;
 void* TYPE_REF ;
 void* TYPE_RREF ;
 void* TYPE_RST ;
 void* TYPE_VAT ;
 void* TYPE_VEC ;
 int VEC_PUSH_STR (struct vector_str*,char*) ;
 int assert (int ) ;
 int cpp_demangle_pop_str (struct cpp_demangle_data*) ;
 int cpp_demangle_push_subst_v (struct cpp_demangle_data*,struct vector_str*) ;
 int cpp_demangle_push_type_qualifier (struct cpp_demangle_data*,struct vector_type_qualifier*,char*) ;
 int cpp_demangle_read_array (struct cpp_demangle_data*) ;
 int cpp_demangle_read_expression_flat (struct cpp_demangle_data*,char**) ;
 int cpp_demangle_read_function (struct cpp_demangle_data*,int*,struct vector_type_qualifier*) ;
 int cpp_demangle_read_name (struct cpp_demangle_data*) ;
 int cpp_demangle_read_number (struct cpp_demangle_data*,long*) ;
 int cpp_demangle_read_number_as_string (struct cpp_demangle_data*,char**) ;
 int cpp_demangle_read_pointer_to_member (struct cpp_demangle_data*,struct vector_type_qualifier*) ;
 int cpp_demangle_read_sname (struct cpp_demangle_data*) ;
 int cpp_demangle_read_subst (struct cpp_demangle_data*) ;
 int cpp_demangle_read_tmpl_args (struct cpp_demangle_data*) ;
 int cpp_demangle_read_tmpl_param (struct cpp_demangle_data*) ;
 int free (char*) ;
 int vector_str_dest (struct vector_str*) ;
 int vector_str_find (struct vector_str*,char*,size_t) ;
 int vector_str_init (struct vector_str*) ;
 int vector_str_push (struct vector_str*,char*,size_t) ;
 char* vector_str_substr (struct vector_str*,size_t,int,size_t*) ;
 int vector_type_qualifier_dest (struct vector_type_qualifier*) ;
 int vector_type_qualifier_init (struct vector_type_qualifier*) ;
 int vector_type_qualifier_push (struct vector_type_qualifier*,void*) ;

__attribute__((used)) static int
cpp_demangle_read_type(struct cpp_demangle_data *ddata,
    struct type_delimit *td)
{
 struct vector_type_qualifier v;
 struct vector_str *output, sv;
 size_t p_idx, type_str_len, subst_str_len;
 int extern_c, is_builtin;
 long len;
 const char *p;
 char *type_str, *exp_str, *num_str, *subst_str;
 bool skip_ref_qualifier, omit_void;

 if (ddata == ((void*)0))
  return (0);

 output = ddata->cur_output;
 if (td) {
  if (td->paren == 0) {
   if (!DEM_PUSH_STR(ddata, "("))
    return (0);
   if (ddata->output.size < 2)
    return (0);
   td->paren = 1;
  }

  if (!td->firstp) {
   if (*ddata->cur != 'I') {
    if (!DEM_PUSH_STR(ddata, ", "))
     return (0);
   }
  }
 }

 assert(output != ((void*)0));





 if (!vector_type_qualifier_init(&v))
  return (0);

 extern_c = 0;
 is_builtin = 1;
 p_idx = output->size;
 type_str = exp_str = num_str = ((void*)0);
 skip_ref_qualifier = 0;

again:


 if (*ddata->cur != 'R' && *ddata->cur != 'O' && *ddata->cur != 'E')
  ddata->ref_qualifier = 0;


 switch (*ddata->cur) {
 case 'a':

  if (!DEM_PUSH_STR(ddata, "signed char"))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'A':

  if (!cpp_demangle_read_array(ddata))
   goto clean;
  is_builtin = 0;
  goto rtn;

 case 'b':

  if (!DEM_PUSH_STR(ddata, "bool"))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'C':

  if (!vector_type_qualifier_push(&v, TYPE_CMX))
   goto clean;
  ++ddata->cur;
  if (td)
   td->firstp = 0;
  goto again;

 case 'c':

  if (!DEM_PUSH_STR(ddata, "char"))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'd':

  if (!DEM_PUSH_STR(ddata, "double"))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'D':
  ++ddata->cur;
  switch (*ddata->cur) {
  case 'a':

   if (!DEM_PUSH_STR(ddata, "auto"))
    goto clean;
   ++ddata->cur;
   break;
  case 'c':

   if (!DEM_PUSH_STR(ddata, "decltype(auto)"))
    goto clean;
   ++ddata->cur;
   break;
  case 'd':

   if (!DEM_PUSH_STR(ddata, "decimal64"))
    goto clean;
   ++ddata->cur;
   break;
  case 'e':

   if (!DEM_PUSH_STR(ddata, "decimal128"))
    goto clean;
   ++ddata->cur;
   break;
  case 'f':

   if (!DEM_PUSH_STR(ddata, "decimal32"))
    goto clean;
   ++ddata->cur;
   break;
  case 'h':

   if (!DEM_PUSH_STR(ddata, "half"))
    goto clean;
   ++ddata->cur;
   break;
  case 'i':

   if (!DEM_PUSH_STR(ddata, "char32_t"))
    goto clean;
   ++ddata->cur;
   break;
  case 'n':

   if (!DEM_PUSH_STR(ddata, "decltype(nullptr)"))
    goto clean;
   ++ddata->cur;
   break;
  case 's':

   if (!DEM_PUSH_STR(ddata, "char16_t"))
    goto clean;
   ++ddata->cur;
   break;
  case 'v':

   ++ddata->cur;
   if (*ddata->cur == '_') {
    ++ddata->cur;
    if (!cpp_demangle_read_expression_flat(ddata,
        &exp_str))
     goto clean;
    if (!VEC_PUSH_STR(&v.ext_name, exp_str))
     goto clean;
   } else {
    if (!cpp_demangle_read_number_as_string(ddata,
        &num_str))
     goto clean;
    if (!VEC_PUSH_STR(&v.ext_name, num_str))
     goto clean;
   }
   if (*ddata->cur != '_')
    goto clean;
   ++ddata->cur;
   if (!vector_type_qualifier_push(&v, TYPE_VEC))
    goto clean;
   if (td)
    td->firstp = 0;
   goto again;
  default:
   goto clean;
  }
  goto rtn;

 case 'e':

  if (!DEM_PUSH_STR(ddata, "long double"))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'E':

  if (ddata->ref_qualifier && ddata->is_functype) {
   skip_ref_qualifier = 1;

   cpp_demangle_pop_str(ddata);
   goto rtn;
  }
  goto clean;

 case 'f':

  if (!DEM_PUSH_STR(ddata, "float"))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'F':

  if (!cpp_demangle_read_function(ddata, &extern_c, &v))
   goto clean;
  is_builtin = 0;
  goto rtn;

 case 'g':

  if (!DEM_PUSH_STR(ddata, "__float128"))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'G':

  if (!vector_type_qualifier_push(&v, TYPE_IMG))
   goto clean;
  ++ddata->cur;
  if (td)
   td->firstp = 0;
  goto again;

 case 'h':

  if (!DEM_PUSH_STR(ddata, "unsigned char"))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'i':

  if (!DEM_PUSH_STR(ddata, "int"))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'I':


  p_idx = output->size;
  if (!cpp_demangle_read_tmpl_args(ddata))
   goto clean;
  if ((subst_str = vector_str_substr(output, p_idx,
      output->size - 1, &subst_str_len)) == ((void*)0))
   goto clean;
  if (!vector_str_init(&sv)) {
   free(subst_str);
   goto clean;
  }
  if (!vector_str_push(&sv, subst_str, subst_str_len)) {
   free(subst_str);
   vector_str_dest(&sv);
   goto clean;
  }
  free(subst_str);
  if (!cpp_demangle_push_subst_v(ddata, &sv)) {
   vector_str_dest(&sv);
   goto clean;
  }
  vector_str_dest(&sv);
  goto rtn;

 case 'j':

  if (!DEM_PUSH_STR(ddata, "unsigned int"))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'K':

  if (!vector_type_qualifier_push(&v, TYPE_CST))
   goto clean;
  ++ddata->cur;
  if (td)
   td->firstp = 0;
  goto again;

 case 'l':

  if (!DEM_PUSH_STR(ddata, "long"))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'm':

  if (!DEM_PUSH_STR(ddata, "unsigned long"))
   goto clean;

  ++ddata->cur;

  goto rtn;
 case 'M':

  if (!cpp_demangle_read_pointer_to_member(ddata, &v))
   goto clean;
  is_builtin = 0;
  goto rtn;

 case 'n':

  if (!DEM_PUSH_STR(ddata, "__int128"))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'o':

  if (!DEM_PUSH_STR(ddata, "unsigned __int128"))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'O':

  if (ddata->ref_qualifier)
   goto clean;
  if (!vector_type_qualifier_push(&v, TYPE_RREF))
   goto clean;
  ddata->ref_qualifier = 1;
  ddata->ref_qualifier_type = TYPE_RREF;
  ++ddata->cur;
  if (td)
   td->firstp = 0;
  goto again;

 case 'P':

  if (!vector_type_qualifier_push(&v, TYPE_PTR))
   goto clean;
  ++ddata->cur;
  if (td)
   td->firstp = 0;
  goto again;

 case 'r':

  if (!vector_type_qualifier_push(&v, TYPE_RST))
   goto clean;
  ++ddata->cur;
  if (td)
   td->firstp = 0;
  goto again;

 case 'R':

  if (ddata->ref_qualifier)
   goto clean;
  if (!vector_type_qualifier_push(&v, TYPE_REF))
   goto clean;
  ddata->ref_qualifier = 1;
  ddata->ref_qualifier_type = TYPE_REF;
  ++ddata->cur;
  if (td)
   td->firstp = 0;
  goto again;

 case 's':

  if (!DEM_PUSH_STR(ddata, "short"))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'S':

  if (!cpp_demangle_read_subst(ddata))
   goto clean;
  is_builtin = 0;
  goto rtn;

 case 't':

  if (!DEM_PUSH_STR(ddata, "unsigned short"))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'T':

  if (!cpp_demangle_read_tmpl_param(ddata))
   goto clean;
  is_builtin = 0;
  goto rtn;

 case 'u':

  ++ddata->cur;
  if (!cpp_demangle_read_sname(ddata))
   goto clean;
  is_builtin = 0;
  goto rtn;

 case 'U':

  ++ddata->cur;
  if (!cpp_demangle_read_number(ddata, &len))
   goto clean;
  if (len <= 0)
   goto clean;
  if (!vector_str_push(&v.ext_name, ddata->cur, len))
   return (0);
  ddata->cur += len;
  if (!vector_type_qualifier_push(&v, TYPE_EXT))
   goto clean;
  if (td)
   td->firstp = 0;
  goto again;

 case 'v':

  omit_void = 0;
  if (td && td->firstp) {




   omit_void = 1;
   for (p = ddata->cur + 1; *p != '\0'; p++) {
    if (*p == 'E')
     break;
    if (*p != 'R' && *p != 'O') {
     omit_void = 0;
     break;
    }
   }
  }
  if (!omit_void && !DEM_PUSH_STR(ddata, "void"))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'V':

  if (!vector_type_qualifier_push(&v, TYPE_VAT))
   goto clean;
  ++ddata->cur;
  if (td)
   td->firstp = 0;
  goto again;

 case 'w':

  if (!DEM_PUSH_STR(ddata, "wchar_t"))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'x':

  if (!DEM_PUSH_STR(ddata, "long long"))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'y':

  if (!DEM_PUSH_STR(ddata, "unsigned long long"))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'z':

  if (!DEM_PUSH_STR(ddata, "..."))
   goto clean;
  ++ddata->cur;
  goto rtn;
 }

 if (!cpp_demangle_read_name(ddata))
  goto clean;

 is_builtin = 0;
rtn:

 type_str = vector_str_substr(output, p_idx, output->size - 1,
     &type_str_len);

 if (is_builtin == 0) {
  if (!vector_str_find(&ddata->subst, type_str, type_str_len) &&
      !vector_str_push(&ddata->subst, type_str, type_str_len))
   goto clean;
 }

 if (!skip_ref_qualifier &&
     !cpp_demangle_push_type_qualifier(ddata, &v, type_str))
  goto clean;

 if (td)
  td->firstp = 0;

 free(type_str);
 free(exp_str);
 free(num_str);
 vector_type_qualifier_dest(&v);

 return (1);
clean:
 free(type_str);
 free(exp_str);
 free(num_str);
 vector_type_qualifier_dest(&v);

 return (0);
}
