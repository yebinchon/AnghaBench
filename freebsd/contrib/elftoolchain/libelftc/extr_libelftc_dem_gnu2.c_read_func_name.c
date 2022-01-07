
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; char** container; } ;
struct demangle_data {char* p; scalar_t__ type; int cnst_fn; TYPE_1__ vec; } ;


 scalar_t__ ELFTC_ISDIGIT (char) ;
 scalar_t__ ENCODE_FUNC ;
 scalar_t__ ENCODE_OP ;
 void* ENCODE_OP_CT ;
 scalar_t__ ENCODE_OP_DT ;
 scalar_t__ ENCODE_OP_TF ;
 scalar_t__ ENCODE_OP_TI ;
 scalar_t__ ENCODE_OP_USER ;
 scalar_t__ ENCODE_OP_VT ;
 int VEC_PUSH_STR (TYPE_1__*,char*) ;
 int assert (int) ;
 int free (char*) ;
 char* malloc (int) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int read_class (struct demangle_data*) ;
 int read_func (struct demangle_data*) ;
 int read_op (struct demangle_data*) ;
 int read_qual_name (struct demangle_data*) ;
 int snprintf (char*,size_t,char*,char*) ;
 size_t strlen (char*) ;
 int vector_str_pop (TYPE_1__*) ;
 int vector_str_push (TYPE_1__*,char*,size_t) ;

__attribute__((used)) static bool
read_func_name(struct demangle_data *d)
{
 size_t len;
 bool rtn;
 char *op_name;

 if (d == ((void*)0))
  return (0);

 rtn = 0;
 op_name = ((void*)0);

 assert(d->p != ((void*)0) && "d->p (org str) is NULL");

 if (*d->p == '_' && *(d->p + 1) == '_') {
  d->p += 2;


  if (*d->p == 'Q' && ELFTC_ISDIGIT(*(d->p + 1))) {
   ++d->p;
   d->type = ENCODE_OP_CT;

   if (read_qual_name(d) == 0)
    return (0);

   return (vector_str_pop(&d->vec));
  } else if (ELFTC_ISDIGIT(*d->p)) {
   d->type = ENCODE_OP_CT;

   return (read_class(d));
  }

  d->type = ENCODE_OP;
  if (read_op(d) == 0) {

   d->type = ENCODE_FUNC;

   if (VEC_PUSH_STR(&d->vec, "__") == 0)
    return (0);

   return (read_func(d));
  }

  if (d->type == ENCODE_OP_USER ||
      d->type == ENCODE_OP_TF ||
      d->type == ENCODE_OP_TI)
   return (1);


  d->p += 2;

  if (*d->p == 'C') {
   ++d->p;

   d->cnst_fn = 1;
  }


  if (*d->p == 'Q' && ELFTC_ISDIGIT(*(d->p + 1))) {
   ++d->p;

   assert(d->vec.size > 0);

   len = strlen(d->vec.container[d->vec.size - 1]);
   if ((op_name = malloc(sizeof(char) * (len + 1)))
       == ((void*)0))
    return (0);

   snprintf(op_name, len + 1, "%s",
       d->vec.container[d->vec.size - 1]);
   vector_str_pop(&d->vec);

   if (read_qual_name(d) == 0)
    goto clean;

   if (VEC_PUSH_STR(&d->vec, "::") == 0)
    goto clean;

   if (vector_str_push(&d->vec, op_name, len) == 0)
    goto clean;

   rtn = 1;
  } else if (ELFTC_ISDIGIT(*d->p)) {
   assert(d->vec.size > 0);

   len = strlen(d->vec.container[d->vec.size - 1]);
   if ((op_name = malloc(sizeof(char) * (len + 1)))
       == ((void*)0))
    return (0);

   snprintf(op_name, len + 1, "%s",
       d->vec.container[d->vec.size - 1]);
   vector_str_pop(&d->vec);

   if (read_class(d) == 0)
    goto clean;

   if (VEC_PUSH_STR(&d->vec, "::") == 0)
    goto clean;

   if (vector_str_push(&d->vec, op_name, len) == 0)
    goto clean;

   rtn = 1;
  }
 } else if (memcmp(d->p, "_$_", 3) == 0) {

  d->p += 3;
  d->type = ENCODE_OP_DT;

  if (*d->p == 'Q' && ELFTC_ISDIGIT(*(d->p + 1))) {
   ++d->p;

   if (read_qual_name(d) == 0)
    return (0);

   return (vector_str_pop(&d->vec));
  } else if (ELFTC_ISDIGIT(*d->p))
   return (read_class(d));

  return (0);
 } else if (memcmp(d->p, "_vt$", 4) == 0) {

  d->p += 4;
  d->type = ENCODE_OP_VT;

  if (*d->p == 'Q' && ELFTC_ISDIGIT(*(d->p + 1))) {
   ++d->p;

   if (read_qual_name(d) == 0)
    return (0);

   if (vector_str_pop(&d->vec) == 0)
    return (0);
  } else if (ELFTC_ISDIGIT(*d->p)) {
   if (read_class(d) == 0)
    return (0);
  }

  return (VEC_PUSH_STR(&d->vec, " virtual table"));
 } else
  return (read_func(d));
clean:
 free(op_name);

 return (rtn);
}
