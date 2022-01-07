
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vector_type_qualifier {size_t size; scalar_t__* q_container; } ;
struct type_delimit {int paren; int firstp; } ;
struct read_cmd_item {struct vector_type_qualifier* data; } ;
struct TYPE_2__ {size_t size; char** container; } ;
struct cpp_demangle_data {float* cur; int is_functype; int ref_qualifier; int ref_qualifier_type; void* push_qualifier; int func_type; TYPE_1__ class_type; int cmd; } ;


 int CPP_DEMANGLE_TRY_LIMIT ;
 int DEM_PUSH_STR (struct cpp_demangle_data*,char*) ;
 void* PUSH_ALL_QUALIFIER ;
 void* PUSH_CV_QUALIFIER ;
 void* PUSH_NON_CV_QUALIFIER ;
 int READ_PTRMEM ;
 scalar_t__ TYPE_CST ;


 scalar_t__ TYPE_RST ;
 scalar_t__ TYPE_VAT ;
 int cpp_demangle_push_str (struct cpp_demangle_data*,char const*,size_t) ;
 int cpp_demangle_push_type_qualifier (struct cpp_demangle_data*,struct vector_type_qualifier*,int *) ;
 int cpp_demangle_read_type (struct cpp_demangle_data*,struct type_delimit*) ;
 size_t strlen (char const*) ;
 struct read_cmd_item* vector_read_cmd_find (int *,int ) ;
 int vector_type_qualifier_dest (struct vector_type_qualifier*) ;
 int vector_type_qualifier_init (struct vector_type_qualifier*) ;

__attribute__((used)) static int
cpp_demangle_read_function(struct cpp_demangle_data *ddata, int *ext_c,
    struct vector_type_qualifier *v)
{
 struct type_delimit td;
 struct read_cmd_item *rc;
 size_t class_type_size, class_type_len, limit;
 const char *class_type;
 int i;
 bool paren, non_cv_qualifier;

 if (ddata == ((void*)0) || *ddata->cur != 'F' || v == ((void*)0))
  return (0);

 ++ddata->cur;
 if (*ddata->cur == 'Y') {
  if (ext_c != ((void*)0))
   *ext_c = 1;
  ++ddata->cur;
 }


 if (!cpp_demangle_read_type(ddata, ((void*)0)))
  return (0);

 if (*ddata->cur != 'E') {
  if (!DEM_PUSH_STR(ddata, " "))
   return (0);

  non_cv_qualifier = 0;
  if (v->size > 0) {
   for (i = 0; (size_t) i < v->size; i++) {
    if (v->q_container[i] != TYPE_RST &&
        v->q_container[i] != TYPE_VAT &&
        v->q_container[i] != TYPE_CST) {
     non_cv_qualifier = 1;
     break;
    }
   }
  }

  paren = 0;
  rc = vector_read_cmd_find(&ddata->cmd, READ_PTRMEM);
  if (non_cv_qualifier || rc != ((void*)0)) {
   if (!DEM_PUSH_STR(ddata, "("))
    return (0);
   paren = 1;
  }


  ddata->push_qualifier = PUSH_NON_CV_QUALIFIER;
  if (!cpp_demangle_push_type_qualifier(ddata, v, ((void*)0)))
   return (0);

  if (rc) {
   if (non_cv_qualifier && !DEM_PUSH_STR(ddata, " "))
    return (0);
   if ((class_type_size = ddata->class_type.size) == 0)
    return (0);
   class_type =
       ddata->class_type.container[class_type_size - 1];
   if (class_type == ((void*)0))
    return (0);
   if ((class_type_len = strlen(class_type)) == 0)
    return (0);
   if (!cpp_demangle_push_str(ddata, class_type,
       class_type_len))
    return (0);
   if (!DEM_PUSH_STR(ddata, "::*"))
    return (0);

   ddata->push_qualifier = PUSH_ALL_QUALIFIER;
   if (!cpp_demangle_push_type_qualifier(ddata, rc->data,
       ((void*)0)))
    return (0);
   ++ddata->func_type;
  }

  if (paren) {
   if (!DEM_PUSH_STR(ddata, ")"))
    return (0);
   paren = 0;
  }

  td.paren = 0;
  td.firstp = 1;
  limit = 0;
  ddata->is_functype = 1;
  for (;;) {
   if (!cpp_demangle_read_type(ddata, &td))
    return (0);
   if (*ddata->cur == 'E')
    break;
   if (limit++ > CPP_DEMANGLE_TRY_LIMIT)
    return (0);
  }
  ddata->is_functype = 0;
  if (td.paren) {
   if (!DEM_PUSH_STR(ddata, ")"))
    return (0);
   td.paren = 0;
  }


  ddata->push_qualifier = PUSH_CV_QUALIFIER;
  if (!cpp_demangle_push_type_qualifier(ddata, v, ((void*)0)))
   return (0);

  ddata->push_qualifier = PUSH_ALL_QUALIFIER;


  vector_type_qualifier_dest(v);
  if (!vector_type_qualifier_init(v))
   return (0);


  if (ddata->ref_qualifier) {
   switch (ddata->ref_qualifier_type) {
   case 129:
    if (!DEM_PUSH_STR(ddata, " &"))
     return (0);
    break;
   case 128:
    if (!DEM_PUSH_STR(ddata, " &&"))
     return (0);
    break;
   default:
    return (0);
   }
   ddata->ref_qualifier = 0;
  }
 }

 ++ddata->cur;

 return (1);
}
