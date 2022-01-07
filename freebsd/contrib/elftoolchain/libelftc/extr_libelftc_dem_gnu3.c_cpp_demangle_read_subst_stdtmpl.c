
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_str {size_t size; } ;
struct cpp_demangle_data {struct vector_str* cur_output; } ;


 int cpp_demangle_push_subst (struct cpp_demangle_data*,char*,size_t) ;
 int cpp_demangle_read_tmpl_args (struct cpp_demangle_data*) ;
 int free (char*) ;
 char* malloc (int) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;
 char* vector_str_substr (struct vector_str*,size_t,int,size_t*) ;

__attribute__((used)) static int
cpp_demangle_read_subst_stdtmpl(struct cpp_demangle_data *ddata,
    const char *str)
{
 struct vector_str *output;
 size_t p_idx, substr_len, len;
 int rtn;
 char *subst_str, *substr;

 if (ddata == ((void*)0) || str == ((void*)0))
  return (0);

 if ((len = strlen(str)) == 0)
  return (0);

 output = ddata->cur_output;

 p_idx = output->size;
 substr = ((void*)0);
 subst_str = ((void*)0);

 if (!cpp_demangle_read_tmpl_args(ddata))
  return (0);
 if ((substr = vector_str_substr(output, p_idx, output->size - 1,
     &substr_len)) == ((void*)0))
  return (0);

 rtn = 0;
 if ((subst_str = malloc(sizeof(char) * (substr_len + len + 1))) ==
     ((void*)0))
  goto clean;

 memcpy(subst_str, str, len);
 memcpy(subst_str + len, substr, substr_len);
 subst_str[substr_len + len] = '\0';

 if (!cpp_demangle_push_subst(ddata, subst_str, substr_len + len))
  goto clean;

 rtn = 1;
clean:
 free(subst_str);
 free(substr);

 return (rtn);
}
