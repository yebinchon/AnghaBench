
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_20__ {int * bfd_section; } ;
typedef TYPE_8__ lang_output_section_statement_type ;
struct TYPE_18__ {int name; } ;
struct TYPE_19__ {int node_class; int node_code; } ;
struct TYPE_17__ {TYPE_9__* child; } ;
struct TYPE_16__ {TYPE_9__* child; } ;
struct TYPE_15__ {TYPE_9__* rhs; TYPE_9__* lhs; TYPE_9__* cond; } ;
struct TYPE_14__ {TYPE_9__* rhs; TYPE_9__* lhs; } ;
struct TYPE_13__ {TYPE_9__* src; } ;
struct TYPE_21__ {TYPE_6__ name; TYPE_7__ type; TYPE_5__ unary; TYPE_4__ assert_s; TYPE_3__ trinary; TYPE_2__ binary; TYPE_1__ assign; } ;
typedef TYPE_9__ etree_type ;
 int init_os (TYPE_8__*,int *,int ) ;
 TYPE_8__* lang_output_section_find (int ) ;

__attribute__((used)) static void
exp_init_os (etree_type *exp)
{
  switch (exp->type.node_class)
    {
    case 133:
    case 130:
      exp_init_os (exp->assign.src);
      break;

    case 132:
      exp_init_os (exp->binary.lhs);
      exp_init_os (exp->binary.rhs);
      break;

    case 129:
      exp_init_os (exp->trinary.cond);
      exp_init_os (exp->trinary.lhs);
      exp_init_os (exp->trinary.rhs);
      break;

    case 134:
      exp_init_os (exp->assert_s.child);
      break;

    case 128:
      exp_init_os (exp->unary.child);
      break;

    case 131:
      switch (exp->type.node_code)
 {
 case 137:
 case 136:
 case 135:
   {
     lang_output_section_statement_type *os;

     os = lang_output_section_find (exp->name.name);
     if (os != ((void*)0) && os->bfd_section == ((void*)0))
       init_os (os, ((void*)0), 0);
   }
 }
      break;

    default:
      break;
    }
}
