
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_16__ {int type; struct filter_arg* right; struct filter_arg* left; } ;
struct TYPE_15__ {int type; TYPE_6__* field; int * buffer; int val; int reg; } ;
struct TYPE_13__ {TYPE_6__* field; } ;
struct TYPE_12__ {int value; } ;
struct TYPE_11__ {int type; char* str; } ;
struct TYPE_10__ {struct filter_arg* right; } ;
struct TYPE_9__ {struct filter_arg* right; } ;
struct filter_arg {int type; TYPE_8__ num; TYPE_7__ str; TYPE_5__ field; TYPE_4__ boolean; TYPE_3__ value; TYPE_2__ op; TYPE_1__ exp; } ;
struct TYPE_14__ {size_t size; } ;


 int FILTER_ARG_BOOLEAN ;




 int const FILTER_ARG_STR ;



 int FILTER_CMP_MATCH ;

 int FILTER_CMP_NOT_MATCH ;


 int FILTER_FALSE ;


 int REG_ICASE ;
 int REG_NOSUB ;
 int die (char*) ;
 int free_arg (struct filter_arg*) ;
 int * malloc_or_die (int ) ;
 int memset (struct filter_arg*,int ,int) ;
 int regcomp (int *,char*,int) ;
 int show_error (char**,char*,...) ;
 int strdup (char*) ;
 int strlen (char*) ;

__attribute__((used)) static int add_right(struct filter_arg *op, struct filter_arg *arg,
       char **error_str)
{
 struct filter_arg *left;
 char *str;
 int op_type;
 int ret;

 switch (op->type) {
 case 139:
  if (op->exp.right)
   goto out_fail;
  op->exp.right = arg;
  break;

 case 136:
  if (op->op.right)
   goto out_fail;
  op->op.right = arg;
  break;

 case 137:
  if (op->op.right)
   goto out_fail;



  switch (arg->type) {
  case 135:
  case 138:
   break;
  default:
   show_error(error_str,
       "Illegal rvalue");
   return -1;
  }





  switch (arg->value.type) {
  case 134:





   if (strlen(arg->value.str) == 1 &&
       op->num.type != 130 &&
       op->num.type != 131) {
    arg->value.type = 129;
    goto do_int;
   }

  case 128:


   op_type = op->num.type;
   left = op->num.left;
   str = arg->value.str;


   memset(op, 0, sizeof(*op));





   if (left->type == FILTER_ARG_BOOLEAN) {
    free_arg(left);
    free_arg(arg);
    op->type = FILTER_ARG_BOOLEAN;
    op->boolean.value = FILTER_FALSE;
    break;
   }


   if (left->type != 138) {
    show_error(error_str,
        "Illegal lvalue for string comparison");
    return -1;
   }


   switch (op_type) {
   case 133:
    op_type = FILTER_CMP_MATCH;
    break;
   case 132:
    op_type = FILTER_CMP_NOT_MATCH;
    break;

   case 130:
   case 131:
    ret = regcomp(&op->str.reg, str, REG_ICASE|REG_NOSUB);
    if (ret) {
     show_error(error_str,
         "RegEx '%s' did not compute",
         str);
     return -1;
    }
    break;
   default:
    show_error(error_str,
        "Illegal comparison for string");
    return -1;
   }

   op->type = FILTER_ARG_STR;
   op->str.type = op_type;
   op->str.field = left->field.field;
   op->str.val = strdup(str);
   if (!op->str.val)
    die("malloc string");



   op->str.buffer = malloc_or_die(op->str.field->size + 1);

   op->str.buffer[op->str.field->size] = 0;


   free_arg(arg);
   free_arg(left);

   break;

  case 129:

 do_int:
   switch (op->num.type) {
   case 130:
   case 131:
    show_error(error_str,
        "Op not allowed with integers");
    return -1;

   default:
    break;
   }


   op->num.right = arg;
   break;
  default:
   goto out_fail;
  }
  break;
 default:
  goto out_fail;
 }

 return 0;

 out_fail:
 show_error(error_str,
     "Syntax error");
 return -1;
}
