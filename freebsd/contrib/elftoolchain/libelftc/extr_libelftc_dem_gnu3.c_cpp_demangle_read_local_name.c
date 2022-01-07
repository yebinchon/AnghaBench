
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_str {int dummy; } ;
struct type_delimit {int paren; int firstp; } ;
struct cpp_demangle_data {char* cur; int is_tmpl; struct vector_str output; struct vector_str* cur_output; } ;


 int CPP_DEMANGLE_TRY_LIMIT ;
 int DEM_PUSH_STR (struct cpp_demangle_data*,char*) ;
 scalar_t__ ELFTC_ISDIGIT (char) ;
 int cpp_demangle_read_encoding (struct cpp_demangle_data*) ;
 int cpp_demangle_read_name (struct cpp_demangle_data*) ;
 int cpp_demangle_read_type (struct cpp_demangle_data*,struct type_delimit*) ;
 int vector_str_dest (struct vector_str*) ;
 int vector_str_init (struct vector_str*) ;
 int vector_str_push_vector (struct vector_str*,struct vector_str*) ;

__attribute__((used)) static int
cpp_demangle_read_local_name(struct cpp_demangle_data *ddata)
{
 struct vector_str local_name;
 struct type_delimit td;
 size_t limit;
 bool more_type;

 if (ddata == ((void*)0))
  return (0);
 if (*(++ddata->cur) == '\0')
  return (0);

 vector_str_init(&local_name);
 ddata->cur_output = &local_name;

 if (!cpp_demangle_read_encoding(ddata)) {
  vector_str_dest(&local_name);
  return (0);
 }

 ddata->cur_output = &ddata->output;

 td.paren = 0;
 td.firstp = 1;
 more_type = 0;
 limit = 0;






 if (ddata->is_tmpl) {
  ddata->is_tmpl = 0;


  if (!cpp_demangle_read_type(ddata, ((void*)0))) {
   vector_str_dest(&local_name);
   return (0);
  }

  more_type = 1;
 }


 if (!vector_str_push_vector(&ddata->output, &local_name)) {
  vector_str_dest(&local_name);
  return (0);
 }
 vector_str_dest(&local_name);

 while (*ddata->cur != '\0') {
  if (!cpp_demangle_read_type(ddata, &td))
   return (0);
  if (more_type)
   more_type = 0;
  if (*ddata->cur == 'E')
   break;
  if (limit++ > CPP_DEMANGLE_TRY_LIMIT)
   return (0);
 }
 if (more_type)
  return (0);

 if (*(++ddata->cur) == '\0')
  return (0);
 if (td.paren == 1) {
  if (!DEM_PUSH_STR(ddata, ")"))
   return (0);
  td.paren = 0;
 }
 if (*ddata->cur == 's')
  ++ddata->cur;
 else {
  if (!DEM_PUSH_STR(ddata, "::"))
   return (0);
  if (!cpp_demangle_read_name(ddata))
   return (0);
 }
 if (*ddata->cur == '_') {
  ++ddata->cur;
  while (ELFTC_ISDIGIT(*ddata->cur) != 0)
   ++ddata->cur;
 }

 return (1);
}
