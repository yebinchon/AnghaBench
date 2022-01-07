
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char** container; int size; } ;
struct vector_type_qualifier {size_t size; int* q_container; TYPE_1__ ext_name; } ;
struct vector_str {int dummy; } ;
struct cpp_demangle_data {int push_qualifier; } ;
typedef enum type_qualifier { ____Placeholder_type_qualifier } type_qualifier ;


 int DEM_PUSH_STR (struct cpp_demangle_data*,char*) ;
 int PUSH_CV_QUALIFIER ;
 int PUSH_NON_CV_QUALIFIER ;
 int VEC_PUSH_STR (struct vector_str*,char const*) ;
 int cpp_demangle_push_subst_v (struct cpp_demangle_data*,struct vector_str*) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int snprintf (char*,size_t,char*,char*) ;
 size_t strlen (char*) ;
 int vector_str_dest (struct vector_str*) ;
 int vector_str_init (struct vector_str*) ;

__attribute__((used)) static int
cpp_demangle_push_type_qualifier(struct cpp_demangle_data *ddata,
    struct vector_type_qualifier *v, const char *type_str)
{
 struct vector_str subst_v;
 enum type_qualifier t;
 size_t idx, e_idx, e_len;
 char *buf;
 int rtn;
 bool cv;

 if (ddata == ((void*)0) || v == ((void*)0))
  return (0);

 if ((idx = v->size) == 0)
  return (1);

 rtn = 0;
 if (type_str != ((void*)0)) {
  if (!vector_str_init(&subst_v))
   return (0);
  if (!VEC_PUSH_STR(&subst_v, type_str))
   goto clean;
 }

 cv = 1;
 e_idx = 0;
 while (idx > 0) {
  switch (v->q_container[idx - 1]) {
  case 133:
   cv = 0;
   if (ddata->push_qualifier == PUSH_CV_QUALIFIER)
    break;
   if (!DEM_PUSH_STR(ddata, "*"))
    goto clean;
   if (type_str != ((void*)0)) {
    if (!VEC_PUSH_STR(&subst_v, "*"))
     goto clean;
    if (!cpp_demangle_push_subst_v(ddata,
        &subst_v))
     goto clean;
   }
   break;

  case 132:
   cv = 0;
   if (ddata->push_qualifier == PUSH_CV_QUALIFIER)
    break;
   if (!DEM_PUSH_STR(ddata, "&"))
    goto clean;
   if (type_str != ((void*)0)) {
    if (!VEC_PUSH_STR(&subst_v, "&"))
     goto clean;
    if (!cpp_demangle_push_subst_v(ddata,
        &subst_v))
     goto clean;
   }
   break;

  case 131:
   cv = 0;
   if (ddata->push_qualifier == PUSH_CV_QUALIFIER)
    break;
   if (!DEM_PUSH_STR(ddata, "&&"))
    goto clean;
   if (type_str != ((void*)0)) {
    if (!VEC_PUSH_STR(&subst_v, "&&"))
     goto clean;
    if (!cpp_demangle_push_subst_v(ddata,
        &subst_v))
     goto clean;
   }
   break;

  case 137:
   cv = 0;
   if (ddata->push_qualifier == PUSH_CV_QUALIFIER)
    break;
   if (!DEM_PUSH_STR(ddata, " complex"))
    goto clean;
   if (type_str != ((void*)0)) {
    if (!VEC_PUSH_STR(&subst_v, " complex"))
     goto clean;
    if (!cpp_demangle_push_subst_v(ddata,
        &subst_v))
     goto clean;
   }
   break;

  case 134:
   cv = 0;
   if (ddata->push_qualifier == PUSH_CV_QUALIFIER)
    break;
   if (!DEM_PUSH_STR(ddata, " imaginary"))
    goto clean;
   if (type_str != ((void*)0)) {
    if (!VEC_PUSH_STR(&subst_v, " imaginary"))
     goto clean;
    if (!cpp_demangle_push_subst_v(ddata,
        &subst_v))
     goto clean;
   }
   break;

  case 135:
   cv = 0;
   if (ddata->push_qualifier == PUSH_CV_QUALIFIER)
    break;
   if (v->ext_name.size == 0 ||
       e_idx > v->ext_name.size - 1)
    goto clean;
   if ((e_len = strlen(v->ext_name.container[e_idx])) ==
       0)
    goto clean;
   if ((buf = malloc(e_len + 2)) == ((void*)0))
    goto clean;
   snprintf(buf, e_len + 2, " %s",
       v->ext_name.container[e_idx]);

   if (!DEM_PUSH_STR(ddata, buf)) {
    free(buf);
    goto clean;
   }

   if (type_str != ((void*)0)) {
    if (!VEC_PUSH_STR(&subst_v, buf)) {
     free(buf);
     goto clean;
    }
    if (!cpp_demangle_push_subst_v(ddata,
        &subst_v)) {
     free(buf);
     goto clean;
    }
   }
   free(buf);
   ++e_idx;
   break;

  case 130:
   if (ddata->push_qualifier == PUSH_NON_CV_QUALIFIER &&
       cv)
    break;
   if (ddata->push_qualifier == PUSH_CV_QUALIFIER && !cv)
    break;
   if (!DEM_PUSH_STR(ddata, " restrict"))
    goto clean;
   if (type_str != ((void*)0)) {
    if (!VEC_PUSH_STR(&subst_v, " restrict"))
     goto clean;
    if (idx - 1 > 0) {
     t = v->q_container[idx - 2];
     if (t == 130 || t == 129 ||
         t == 136)
      break;
    }
    if (!cpp_demangle_push_subst_v(ddata,
        &subst_v))
     goto clean;
   }
   break;

  case 129:
   if (ddata->push_qualifier == PUSH_NON_CV_QUALIFIER &&
       cv)
    break;
   if (ddata->push_qualifier == PUSH_CV_QUALIFIER && !cv)
    break;
   if (!DEM_PUSH_STR(ddata, " volatile"))
    goto clean;
   if (type_str != ((void*)0)) {
    if (!VEC_PUSH_STR(&subst_v, " volatile"))
     goto clean;
    if (idx - 1 > 0) {
     t = v->q_container[idx - 2];
     if (t == 130 || t == 129 ||
         t == 136)
      break;
    }
    if (!cpp_demangle_push_subst_v(ddata,
        &subst_v))
     goto clean;
   }
   break;

  case 136:
   if (ddata->push_qualifier == PUSH_NON_CV_QUALIFIER &&
       cv)
    break;
   if (ddata->push_qualifier == PUSH_CV_QUALIFIER && !cv)
    break;
   if (!DEM_PUSH_STR(ddata, " const"))
    goto clean;
   if (type_str != ((void*)0)) {
    if (!VEC_PUSH_STR(&subst_v, " const"))
     goto clean;
    if (idx - 1 > 0) {
     t = v->q_container[idx - 2];
     if (t == 130 || t == 129 ||
         t == 136)
      break;
    }
    if (!cpp_demangle_push_subst_v(ddata,
        &subst_v))
     goto clean;
   }
   break;

  case 128:
   cv = 0;
   if (ddata->push_qualifier == PUSH_CV_QUALIFIER)
    break;
   if (v->ext_name.size == 0 ||
       e_idx > v->ext_name.size - 1)
    goto clean;
   if ((e_len = strlen(v->ext_name.container[e_idx])) ==
       0)
    goto clean;
   if ((buf = malloc(e_len + 12)) == ((void*)0))
    goto clean;
   snprintf(buf, e_len + 12, " __vector(%s)",
       v->ext_name.container[e_idx]);
   if (!DEM_PUSH_STR(ddata, buf)) {
    free(buf);
    goto clean;
   }
   if (type_str != ((void*)0)) {
    if (!VEC_PUSH_STR(&subst_v, buf)) {
     free(buf);
     goto clean;
    }
    if (!cpp_demangle_push_subst_v(ddata,
        &subst_v)) {
     free(buf);
     goto clean;
    }
   }
   free(buf);
   ++e_idx;
   break;
  }
  --idx;
 }

 rtn = 1;
clean:
 if (type_str != ((void*)0))
  vector_str_dest(&subst_v);

 return (rtn);
}
