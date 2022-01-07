
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
 int SSA_NAME_VAR (int ) ;

 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;


 int gcc_unreachable () ;
 char* get_name (int ) ;
 int lsm_tmp_name_add (char const*) ;

__attribute__((used)) static void
gen_lsm_tmp_name (tree ref)
{
  const char *name;

  switch (TREE_CODE (ref))
    {
    case 135:
    case 142:
    case 136:
      gen_lsm_tmp_name (TREE_OPERAND (ref, 0));
      lsm_tmp_name_add ("_");
      break;

    case 139:
    case 128:
    case 141:
      gen_lsm_tmp_name (TREE_OPERAND (ref, 0));
      break;

    case 133:
      gen_lsm_tmp_name (TREE_OPERAND (ref, 0));
      lsm_tmp_name_add ("_RE");
      break;

    case 137:
      gen_lsm_tmp_name (TREE_OPERAND (ref, 0));
      lsm_tmp_name_add ("_IM");
      break;

    case 138:
      gen_lsm_tmp_name (TREE_OPERAND (ref, 0));
      lsm_tmp_name_add ("_");
      name = get_name (TREE_OPERAND (ref, 1));
      if (!name)
 name = "F";
      lsm_tmp_name_add ("_");
      lsm_tmp_name_add (name);

    case 140:
      gen_lsm_tmp_name (TREE_OPERAND (ref, 0));
      lsm_tmp_name_add ("_I");
      break;

    case 131:
      ref = SSA_NAME_VAR (ref);


    case 129:
    case 134:
      name = get_name (ref);
      if (!name)
 name = "D";
      lsm_tmp_name_add (name);
      break;

    case 130:
      lsm_tmp_name_add ("S");
      break;

    case 132:
      lsm_tmp_name_add ("R");
      break;

    default:
      gcc_unreachable ();
    }
}
