
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_44__ TYPE_9__ ;
typedef struct TYPE_43__ TYPE_8__ ;
typedef struct TYPE_42__ TYPE_7__ ;
typedef struct TYPE_41__ TYPE_6__ ;
typedef struct TYPE_40__ TYPE_5__ ;
typedef struct TYPE_39__ TYPE_4__ ;
typedef struct TYPE_38__ TYPE_3__ ;
typedef struct TYPE_37__ TYPE_2__ ;
typedef struct TYPE_36__ TYPE_22__ ;
typedef struct TYPE_35__ TYPE_21__ ;
typedef struct TYPE_34__ TYPE_20__ ;
typedef struct TYPE_33__ TYPE_1__ ;
typedef struct TYPE_32__ TYPE_19__ ;
typedef struct TYPE_31__ TYPE_18__ ;
typedef struct TYPE_30__ TYPE_17__ ;
typedef struct TYPE_29__ TYPE_16__ ;
typedef struct TYPE_28__ TYPE_15__ ;
typedef struct TYPE_27__ TYPE_14__ ;
typedef struct TYPE_26__ TYPE_13__ ;
typedef struct TYPE_25__ TYPE_12__ ;
typedef struct TYPE_24__ TYPE_11__ ;
typedef struct TYPE_23__ TYPE_10__ ;


struct TYPE_33__ {int* x_dimen; } ;
struct TYPE_37__ {TYPE_1__ x_ary; } ;
struct TYPE_32__ {int x_size; } ;
struct TYPE_34__ {TYPE_19__ x_lnsz; } ;
struct TYPE_26__ {int p; } ;
struct TYPE_35__ {TYPE_2__ x_fcnary; TYPE_20__ x_misc; TYPE_13__ x_tagndx; } ;
struct TYPE_43__ {int x_scnlen; } ;
union internal_auxent {TYPE_21__ x_sym; TYPE_8__ x_scn; } ;
struct TYPE_40__ {int * _n_nptr; } ;
struct internal_syment {int n_type; TYPE_5__ _n; int n_numaux; int n_sclass; } ;
struct TYPE_41__ {int code; int lines; void* parameters; struct coff_type* function_returns; } ;
struct TYPE_39__ {struct coff_type* points_to; } ;
struct TYPE_38__ {int dim; struct coff_type* array_of; } ;
struct TYPE_30__ {void* elements; } ;
struct TYPE_29__ {TYPE_15__* ref; } ;
struct TYPE_24__ {TYPE_12__* ref; } ;
struct TYPE_23__ {int isstruct; int idx; void* elements; } ;
struct TYPE_31__ {int basic; TYPE_6__ function; TYPE_4__ pointer; TYPE_3__ array; TYPE_17__ aenumdef; TYPE_16__ aenumref; TYPE_11__ astructref; TYPE_10__ astructdef; } ;
struct coff_type {int size; TYPE_18__ u; void* type; } ;
struct TYPE_44__ {int size; } ;
struct TYPE_42__ {union internal_auxent auxent; struct internal_syment syment; } ;
struct TYPE_36__ {TYPE_7__ u; } ;
struct TYPE_28__ {TYPE_14__* type; } ;
struct TYPE_27__ {int size; } ;
struct TYPE_25__ {TYPE_9__* type; } ;


 int C_STAT ;
 int DIMNUM ;
 int DOUBLE_SIZE ;



 int FLOAT_SIZE ;
 size_t INDEXOF (int ) ;
 void* INT_SIZE ;
 int LONG_SIZE ;
 int PTR_SIZE ;
 int SHORT_SIZE ;
 void* coff_array_type ;
 void* coff_basic_type ;
 void* coff_enumdef_type ;
 void* coff_enumref_type ;
 void* coff_function_type ;
 void* coff_pointer_type ;
 void* coff_secdef_type ;
 void* coff_structdef_type ;
 void* coff_structref_type ;
 int do_lines (int,int ) ;
 void* empty_scope () ;
 struct coff_type* last_enum ;
 struct coff_type* last_function_type ;
 struct coff_type* last_struct ;
 TYPE_22__* rawsyms ;
 void** tindex ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static
struct coff_type *
do_type (int i)
{
  struct internal_syment *sym = &rawsyms[i].u.syment;
  union internal_auxent *aux = &rawsyms[i + 1].u.auxent;
  struct coff_type *res =
    (struct coff_type *) xmalloc (sizeof (struct coff_type));
  int type = sym->n_type;
  int which_dt = 0;
  int dimind = 0;

  res->type = coff_basic_type;
  res->u.basic = type & 0xf;

  switch (type & 0xf)
    {
    case 136:
    case 128:
      if (sym->n_numaux && sym->n_sclass == C_STAT)
 {

   res->type = coff_secdef_type;
   res->size = aux->x_scn.x_scnlen;
 }
      else
 {
   if (type == 0)
     {

       res->size = INT_SIZE;
       res->u.basic = 132;
     }
   else
     {

       res->size = 0;
     }
 }
      break;


      break;
    case 133:
    case 143:
      res->size = 1;
      break;
    case 129:
    case 135:
      res->size = SHORT_SIZE;
      break;
    case 132:
    case 139:
      res->size = INT_SIZE;
      break;
    case 131:
    case 138:
      res->size = LONG_SIZE;
      break;
    case 140:
      res->size = FLOAT_SIZE;
      break;
    case 142:
      res->size = DOUBLE_SIZE;
      break;
    case 134:
    case 130:
      if (sym->n_numaux)
 {
   if (aux->x_sym.x_tagndx.p)
     {

       res->type = coff_structref_type;
       res->u.astructref.ref = tindex[INDEXOF (aux->x_sym.x_tagndx.p)];
       res->size = res->u.astructref.ref ?
  res->u.astructref.ref->type->size : 0;
     }
   else
     {

       last_struct = res;
       res->type = coff_structdef_type;
       res->u.astructdef.elements = empty_scope ();
       res->u.astructdef.idx = 0;
       res->u.astructdef.isstruct = (type & 0xf) == 134;
       res->size = aux->x_sym.x_misc.x_lnsz.x_size;
     }
 }
      else
 {

   res->type = coff_structref_type;
   res->u.astructref.ref = 0;
   res->size = 0;
 }
      break;
    case 141:
      if (aux->x_sym.x_tagndx.p)
 {

   res->type = coff_enumref_type;
   res->u.aenumref.ref = tindex[INDEXOF (aux->x_sym.x_tagndx.p)];
   res->size = res->u.aenumref.ref->type->size;
 }
      else
 {

   last_enum = res;
   res->type = coff_enumdef_type;
   res->u.aenumdef.elements = empty_scope ();
   res->size = aux->x_sym.x_misc.x_lnsz.x_size;
 }
      break;
    case 137:
      break;
    }

  for (which_dt = 5; which_dt >= 0; which_dt--)
    {
      switch ((type >> ((which_dt * 2) + 4)) & 0x3)
 {
 case 0:
   break;
 case 146:
   {
     struct coff_type *ptr = ((struct coff_type *)
         xmalloc (sizeof (struct coff_type)));
     int els = (dimind < DIMNUM
         ? aux->x_sym.x_fcnary.x_ary.x_dimen[dimind]
         : 0);
     ++dimind;
     ptr->type = coff_array_type;
     ptr->size = els * res->size;
     ptr->u.array.dim = els;
     ptr->u.array.array_of = res;
     res = ptr;
     break;
   }
 case 144:
   {
     struct coff_type *ptr =
       (struct coff_type *) xmalloc (sizeof (struct coff_type));
     ptr->size = PTR_SIZE;
     ptr->type = coff_pointer_type;
     ptr->u.pointer.points_to = res;
     res = ptr;
     break;
   }
 case 145:
   {
     struct coff_type *ptr
       = (struct coff_type *) xmalloc (sizeof (struct coff_type));
     ptr->size = 0;
     ptr->type = coff_function_type;
     ptr->u.function.function_returns = res;
     ptr->u.function.parameters = empty_scope ();
     ptr->u.function.lines = do_lines (i, sym->_n._n_nptr[1]);
     ptr->u.function.code = 0;
     last_function_type = ptr;
     res = ptr;
     break;
   }
 }
    }
  return res;
}
