
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int dump_info_p ;
 int DECL_ASSIGNMENT_OPERATOR_P (int ) ;
 int DECL_OVERLOADED_OPERATOR_P (int ) ;
 int dump_string (int ,char*) ;

__attribute__((used)) static void
dump_op (dump_info_p di, tree t)
{
  switch (DECL_OVERLOADED_OPERATOR_P (t)) {
    case 144:
      dump_string (di, "new");
      break;
    case 128:
      dump_string (di, "vecnew");
      break;
    case 156:
      dump_string (di, "delete");
      break;
    case 129:
      dump_string (di, "vecdelete");
      break;
    case 130:
      dump_string (di, "pos");
      break;
    case 145:
      dump_string (di, "neg");
      break;
    case 165:
      dump_string (di, "addr");
      break;
    case 152:
      dump_string(di, "deref");
      break;
    case 161:
      dump_string(di, "not");
      break;
    case 132:
      dump_string(di, "lnot");
      break;
    case 137:
      dump_string(di, "preinc");
      break;
    case 138:
      dump_string(di, "predec");
      break;
    case 141:
      if (DECL_ASSIGNMENT_OPERATOR_P (t))
 dump_string (di, "plusassign");
      else
 dump_string(di, "plus");
      break;
    case 147:
      if (DECL_ASSIGNMENT_OPERATOR_P (t))
 dump_string (di, "minusassign");
      else
 dump_string(di, "minus");
      break;
    case 146:
      if (DECL_ASSIGNMENT_OPERATOR_P (t))
 dump_string (di, "multassign");
      else
 dump_string (di, "mult");
      break;
    case 135:
      if (DECL_ASSIGNMENT_OPERATOR_P (t))
 dump_string (di, "divassign");
      else
 dump_string (di, "div");
      break;
    case 134:
      if (DECL_ASSIGNMENT_OPERATOR_P (t))
  dump_string (di, "modassign");
      else
 dump_string (di, "mod");
      break;
    case 163:
      if (DECL_ASSIGNMENT_OPERATOR_P (t))
 dump_string (di, "andassign");
      else
 dump_string (di, "and");
      break;
    case 162:
      if (DECL_ASSIGNMENT_OPERATOR_P (t))
 dump_string (di, "orassign");
      else
 dump_string (di, "or");
      break;
    case 160:
      if (DECL_ASSIGNMENT_OPERATOR_P (t))
 dump_string (di, "xorassign");
      else
 dump_string (di, "xor");
      break;
    case 150:
      if (DECL_ASSIGNMENT_OPERATOR_P (t))
 dump_string (di, "lshiftassign");
      else
 dump_string (di, "lshift");
      break;
    case 136:
      if (DECL_ASSIGNMENT_OPERATOR_P (t))
 dump_string (di, "rshiftassign");
      else
 dump_string (di, "rshift");
      break;
    case 155:
      dump_string (di, "eq");
      break;
    case 143:
      dump_string (di, "ne");
      break;
    case 149:
      dump_string (di, "lt");
      break;
    case 153:
      dump_string (di, "gt");
      break;
    case 151:
      dump_string (di, "le");
      break;
    case 154:
      dump_string (di, "ge");
      break;
    case 133:
      dump_string (di, "land");
      break;
    case 131:
      dump_string (di, "lor");
      break;
    case 157:
      dump_string (di, "compound");
      break;
    case 148:
      dump_string (di, "memref");
      break;
    case 158:
      dump_string (di, "ref");
      break;
    case 164:
      dump_string (di, "subs");
      break;
    case 139:
      dump_string (di, "postinc");
      break;
    case 140:
      dump_string (di, "postdec");
      break;
    case 159:
      dump_string (di, "call");
      break;
    case 142:
      if (DECL_ASSIGNMENT_OPERATOR_P (t))
 dump_string (di, "assign");
      break;
    default:
      break;
  }
}
