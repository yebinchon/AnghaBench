
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_11__ {struct print_arg* args; } ;
struct TYPE_20__ {struct print_arg* right; struct print_arg* left; struct print_arg* op; } ;
struct TYPE_19__ {struct print_arg* index; } ;
struct TYPE_18__ {struct print_arg* string; } ;
struct TYPE_17__ {struct print_arg* item; struct print_arg* type; } ;
struct TYPE_16__ {struct print_arg* size; struct print_arg* field; } ;
struct TYPE_15__ {int symbols; struct print_arg* field; } ;
struct TYPE_14__ {int flags; struct print_arg* delim; struct print_arg* field; } ;
struct TYPE_13__ {struct print_arg* name; } ;
struct TYPE_12__ {struct print_arg* atom; } ;
struct print_arg {int type; struct print_arg* next; TYPE_10__ func; TYPE_9__ op; TYPE_8__ dynarray; TYPE_7__ string; TYPE_6__ typecast; TYPE_5__ hex; TYPE_4__ symbol; TYPE_3__ flags; TYPE_2__ field; TYPE_1__ atom; } ;
 int free (struct print_arg*) ;
 int free_flag_sym (int ) ;

__attribute__((used)) static void free_arg(struct print_arg *arg)
{
 struct print_arg *farg;

 if (!arg)
  return;

 switch (arg->type) {
 case 139:
  free(arg->atom.atom);
  break;
 case 136:
  free(arg->field.name);
  break;
 case 135:
  free_arg(arg->flags.field);
  free(arg->flags.delim);
  free_flag_sym(arg->flags.flags);
  break;
 case 129:
  free_arg(arg->symbol.field);
  free_flag_sym(arg->symbol.symbols);
  break;
 case 133:
  free_arg(arg->hex.field);
  free_arg(arg->hex.size);
  break;
 case 128:
  free(arg->typecast.type);
  free_arg(arg->typecast.item);
  break;
 case 130:
 case 138:
  free(arg->string.string);
  break;
 case 137:
  free(arg->dynarray.index);
  break;
 case 131:
  free(arg->op.op);
  free_arg(arg->op.left);
  free_arg(arg->op.right);
  break;
 case 134:
  while (arg->func.args) {
   farg = arg->func.args;
   arg->func.args = farg->next;
   free_arg(farg);
  }
  break;

 case 132:
 default:
  break;
 }

 free(arg);
}
