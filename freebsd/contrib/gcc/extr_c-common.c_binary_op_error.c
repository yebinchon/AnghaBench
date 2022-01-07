
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
 int error (char*,char const*,char*,char*) ;
 int gcc_unreachable () ;

void
binary_op_error (enum tree_code code, tree type0, tree type1)
{
  const char *opname;

  switch (code)
    {
    case 133:
      opname = "+"; break;
    case 137:
      opname = "-"; break;
    case 135:
      opname = "*"; break;
    case 138:
      opname = "max"; break;
    case 136:
      opname = "min"; break;
    case 146:
      opname = "=="; break;
    case 134:
      opname = "!="; break;
    case 141:
      opname = "<="; break;
    case 143:
      opname = ">="; break;
    case 139:
      opname = "<"; break;
    case 142:
      opname = ">"; break;
    case 140:
      opname = "<<"; break;
    case 132:
      opname = ">>"; break;
    case 130:
    case 144:
      opname = "%"; break;
    case 131:
    case 145:
      opname = "/"; break;
    case 149:
      opname = "&"; break;
    case 148:
      opname = "|"; break;
    case 129:
      opname = "&&"; break;
    case 128:
      opname = "||"; break;
    case 147:
      opname = "^"; break;
    default:
      gcc_unreachable ();
    }
  error ("invalid operands to binary %s (have %qT and %qT)", opname,
  type0, type1);
}
