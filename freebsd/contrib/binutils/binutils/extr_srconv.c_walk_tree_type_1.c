
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_26__ {TYPE_8__* ref; } ;
struct TYPE_24__ {TYPE_6__* elements; int idx; } ;
struct TYPE_22__ {int dim; struct coff_type* array_of; } ;
struct TYPE_21__ {TYPE_3__* ref; } ;
struct TYPE_19__ {TYPE_1__* elements; int idx; } ;
struct TYPE_16__ {TYPE_11__* parameters; struct coff_type* function_returns; } ;
struct TYPE_14__ {struct coff_type* points_to; } ;
struct TYPE_17__ {TYPE_9__ aenumref; TYPE_7__ aenumdef; TYPE_5__ array; TYPE_4__ astructref; TYPE_2__ astructdef; TYPE_12__ function; TYPE_10__ pointer; int basic; } ;
struct coff_type {int type; int size; TYPE_13__ u; } ;
struct coff_symbol {struct coff_symbol* next; } ;
struct coff_sfile {int dummy; } ;
struct IT_dpt {int neg; int dunno; } ;
struct IT_dfp {int end; int neg; int nparams; int spare; } ;
struct IT_den {int end; int neg; int spare; } ;
struct IT_dds {int end; int neg; int spare; } ;
struct IT_dbt {int bitsize; int neg; void* sid; void* fptype; void* sign; void* btype; } ;
struct IT_dar {int dims; int* max; int* min; int neg; int length; int * min_variable; int * max_variable; int * spare; int * subtype; int * variable; void* minspare; void* maxspare; } ;
struct TYPE_25__ {int number; } ;
struct TYPE_23__ {struct coff_symbol* vars_head; } ;
struct TYPE_20__ {int number; } ;
struct TYPE_18__ {struct coff_symbol* vars_head; } ;
struct TYPE_15__ {struct coff_symbol* vars_head; int nvars; } ;


 void* BTYPE_CHAR ;
 void* BTYPE_ENUM ;
 void* BTYPE_FLOAT ;
 void* BTYPE_INT ;
 void* BTYPE_STRUCT ;
 void* BTYPE_TAG ;
 void* BTYPE_UNSPEC ;
 void* BTYPE_VOID ;
 void* FPTYPE_DOUBLE ;
 void* FPTYPE_EXTENDED ;
 void* FPTYPE_NOTSPEC ;
 void* FPTYPE_SINGLE ;
 void* SIGN_SIGNED ;
 void* SIGN_UNSIGNED ;
 void* SIGN_UNSPEC ;
 int SUB_INTEGER ;
 int VARIABLE_FIXED ;
 int abort () ;
 int file ;
 void* get_member_id (int ) ;
 void* nints (int) ;
 int sysroff_swap_dar_out (int ,struct IT_dar*) ;
 int sysroff_swap_dbt_out (int ,struct IT_dbt*) ;
 int sysroff_swap_dds_out (int ,struct IT_dds*) ;
 int sysroff_swap_den_out (int ,struct IT_den*) ;
 int sysroff_swap_dfp_out (int ,struct IT_dfp*) ;
 int sysroff_swap_dpt_out (int ,struct IT_dpt*) ;
 int walk_tree_symbol (struct coff_sfile*,int ,struct coff_symbol*,int) ;

__attribute__((used)) static void
walk_tree_type_1 (struct coff_sfile *sfile, struct coff_symbol *symbol,
    struct coff_type *type, int nest)
{
  switch (type->type)
    {
    case 130:
    case 135:
      {
 struct IT_dbt dbt;

 switch (type->u.basic)
   {
   case 143:
   case 137:
     dbt.btype = BTYPE_VOID;
     dbt.sign = BTYPE_UNSPEC;
     dbt.fptype = FPTYPE_NOTSPEC;
     break;

   case 149:
     dbt.btype = BTYPE_CHAR;
     dbt.sign = BTYPE_UNSPEC;
     dbt.fptype = FPTYPE_NOTSPEC;
     break;

   case 142:
   case 146:
   case 144:
     dbt.btype = BTYPE_INT;
     dbt.sign = SIGN_SIGNED;
     dbt.fptype = FPTYPE_NOTSPEC;
     break;

   case 147:
     dbt.btype = BTYPE_FLOAT;
     dbt.fptype = FPTYPE_SINGLE;
     break;

   case 148:
     dbt.btype = BTYPE_FLOAT;
     dbt.fptype = FPTYPE_DOUBLE;
     break;

   case 145:
     dbt.btype = BTYPE_FLOAT;
     dbt.fptype = FPTYPE_EXTENDED;
     break;

   case 141:
     dbt.btype = BTYPE_CHAR;
     dbt.sign = SIGN_UNSIGNED;
     dbt.fptype = FPTYPE_NOTSPEC;
     break;

   case 138:
   case 140:
   case 139:
     dbt.btype = BTYPE_INT;
     dbt.sign = SIGN_UNSIGNED;
     dbt.fptype = FPTYPE_NOTSPEC;
     break;
   }

 dbt.bitsize = type->size;
 dbt.neg = 0x1001;
 sysroff_swap_dbt_out (file, &dbt);
 break;
      }

    case 131:
      {
 struct IT_dpt dpt;

 dpt.dunno = 0;
 walk_tree_type_1 (sfile, symbol, type->u.pointer.points_to, nest + 1);
 dpt.neg = 0x1001;
 sysroff_swap_dpt_out (file, &dpt);
 break;
      }

    case 132:
      {
 struct IT_dfp dfp;
 struct coff_symbol *param;

 dfp.end = 0;
 dfp.spare = 0;
 dfp.nparams = type->u.function.parameters->nvars;
 dfp.neg = 0x1001;

 walk_tree_type_1 (sfile, symbol, type->u.function.function_returns, nest + 1);

 sysroff_swap_dfp_out (file, &dfp);

 for (param = type->u.function.parameters->vars_head;
      param;
      param = param->next)
   walk_tree_symbol (sfile, 0, param, nest);

 dfp.end = 1;
 sysroff_swap_dfp_out (file, &dfp);
 break;
      }

    case 129:
      {
 struct IT_dbt dbt;
 struct IT_dds dds;
 struct coff_symbol *member;

 dds.spare = 0;
 dbt.btype = BTYPE_STRUCT;
 dbt.bitsize = type->size;
 dbt.sign = SIGN_UNSPEC;
 dbt.fptype = FPTYPE_NOTSPEC;
 dbt.sid = get_member_id (type->u.astructdef.idx);
 dbt.neg = 0x1001;
 sysroff_swap_dbt_out (file, &dbt);
 dds.end = 0;
 dds.neg = 0x1001;
 sysroff_swap_dds_out (file, &dds);

 for (member = type->u.astructdef.elements->vars_head;
      member;
      member = member->next)
   walk_tree_symbol (sfile, 0, member, nest + 1);

 dds.end = 1;
 sysroff_swap_dds_out (file, &dds);

      }
      break;

    case 128:
      {
 struct IT_dbt dbt;

 dbt.btype = BTYPE_TAG;
 dbt.bitsize = type->size;
 dbt.sign = SIGN_UNSPEC;
 dbt.fptype = FPTYPE_NOTSPEC;

 if (type->u.astructref.ref)
   dbt.sid = get_member_id (type->u.astructref.ref->number);
 else
   dbt.sid = 0;

 dbt.neg = 0x1001;
 sysroff_swap_dbt_out (file, &dbt);
      }
      break;

    case 136:
      {
 struct IT_dar dar;
 int j;
 int dims = 1;

 dar.dims = dims;
 dar.variable = nints (dims);
 dar.subtype = nints (dims);
 dar.spare = nints (dims);
 dar.max_variable = nints (dims);
 dar.maxspare = nints (dims);
 dar.max = nints (dims);
 dar.min_variable = nints (dims);
 dar.min = nints (dims);
 dar.minspare = nints (dims);
 dar.neg = 0x1001;
 dar.length = type->size / type->u.array.dim;

 for (j = 0; j < dims; j++)
   {
     dar.variable[j] = VARIABLE_FIXED;
     dar.subtype[j] = SUB_INTEGER;
     dar.spare[j] = 0;
     dar.max_variable[j] = 0;
     dar.max[j] = type->u.array.dim;
     dar.min_variable[j] = 0;
     dar.min[j] = 1;
   }
 walk_tree_type_1 (sfile, symbol, type->u.array.array_of, nest + 1);
 sysroff_swap_dar_out (file, &dar);
      }
      break;

    case 134:
      {
 struct IT_dbt dbt;
 struct IT_den den;
 struct coff_symbol *member;

 dbt.btype = BTYPE_ENUM;
 dbt.bitsize = type->size;
 dbt.sign = SIGN_UNSPEC;
 dbt.fptype = FPTYPE_NOTSPEC;
 dbt.sid = get_member_id (type->u.aenumdef.idx);
 dbt.neg = 0x1001;
 sysroff_swap_dbt_out (file, &dbt);

 den.end = 0;
 den.neg = 0x1001;
 den.spare = 0;
 sysroff_swap_den_out (file, &den);

 for (member = type->u.aenumdef.elements->vars_head;
      member;
      member = member->next)
   walk_tree_symbol (sfile, 0, member, nest + 1);

 den.end = 1;
 sysroff_swap_den_out (file, &den);
      }
      break;

    case 133:
      {
 struct IT_dbt dbt;

 dbt.btype = BTYPE_TAG;
 dbt.bitsize = type->size;
 dbt.sign = SIGN_UNSPEC;
 dbt.fptype = FPTYPE_NOTSPEC;
 dbt.sid = get_member_id (type->u.aenumref.ref->number);
 dbt.neg = 0x1001;
 sysroff_swap_dbt_out (file, &dbt);
      }
      break;

    default:
      abort ();
    }
}
