
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_node_structure_enum { ____Placeholder_tree_node_structure_enum } tree_node_structure_enum ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
 int TREE_CODE (int ) ;
 int TREE_CODE_CLASS (int) ;


 int TS_BINFO ;
 int TS_BLOCK ;
 int TS_COMMON ;
 int TS_COMPLEX ;
 int TS_CONSTRUCTOR ;
 int TS_CONST_DECL ;
 int TS_DECL_NON_COMMON ;
 int TS_EXP ;
 int TS_FIELD_DECL ;
 int TS_FUNCTION_DECL ;
 int TS_IDENTIFIER ;
 int TS_INT_CST ;
 int TS_LABEL_DECL ;
 int TS_LIST ;
 int TS_MEMORY_TAG ;
 int TS_OMP_CLAUSE ;
 int TS_PARM_DECL ;
 int TS_PHI_NODE ;
 int TS_REAL_CST ;
 int TS_RESULT_DECL ;
 int TS_SSA_NAME ;
 int TS_STATEMENT_LIST ;
 int TS_STRING ;
 int TS_TYPE ;
 int TS_TYPE_DECL ;
 int TS_VALUE_HANDLE ;
 int TS_VAR_DECL ;
 int TS_VEC ;
 int TS_VECTOR ;




 int gcc_unreachable () ;
enum tree_node_structure_enum
tree_node_structure (tree t)
{
  enum tree_code code = TREE_CODE (t);

  switch (TREE_CODE_CLASS (code))
    {
    case 133:
      {
 switch (code)
   {
   case 159:
     return TS_FIELD_DECL;
   case 152:
     return TS_PARM_DECL;
   case 137:
     return TS_VAR_DECL;
   case 155:
     return TS_LABEL_DECL;
   case 148:
     return TS_RESULT_DECL;
   case 161:
     return TS_CONST_DECL;
   case 139:
     return TS_TYPE_DECL;
   case 158:
     return TS_FUNCTION_DECL;
   case 143:
   case 154:
   case 144:
     return TS_MEMORY_TAG;
   default:
     return TS_DECL_NON_COMMON;
   }
      }
    case 129:
      return TS_TYPE;
    case 131:
    case 134:
    case 128:
    case 135:
    case 132:
    case 130:
      return TS_EXP;
    default:
      break;
    }
  switch (code)
    {

    case 156: return TS_INT_CST;
    case 149: return TS_REAL_CST;
    case 163: return TS_COMPLEX;
    case 136: return TS_VECTOR;
    case 145: return TS_STRING;

    case 160: return TS_COMMON;
    case 157: return TS_IDENTIFIER;
    case 141: return TS_LIST;
    case 140: return TS_VEC;
    case 151: return TS_PHI_NODE;
    case 147: return TS_SSA_NAME;
    case 150: return TS_COMMON;
    case 146: return TS_STATEMENT_LIST;
    case 164: return TS_BLOCK;
    case 162: return TS_CONSTRUCTOR;
    case 142: return TS_BINFO;
    case 138: return TS_VALUE_HANDLE;
    case 153: return TS_OMP_CLAUSE;

    default:
      gcc_unreachable ();
    }
}
