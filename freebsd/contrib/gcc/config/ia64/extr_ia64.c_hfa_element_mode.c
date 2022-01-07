
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;






 int FIELD_DECL ;

 int GET_MODE_CLASS (int) ;
 int GET_MODE_INNER (int) ;



 int MODE_COMPLEX_FLOAT ;
 int MODE_FLOAT ;






 int TCmode ;
 int TFmode ;
 int TREE_CHAIN (int ) ;
 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_FIELDS (int ) ;
 int TYPE_MODE (int ) ;
 int TYPE_SIZE (int ) ;


 int VOIDmode ;
 scalar_t__ integer_zerop (int ) ;

__attribute__((used)) static enum machine_mode
hfa_element_mode (tree type, bool nested)
{
  enum machine_mode element_mode = VOIDmode;
  enum machine_mode mode;
  enum tree_code code = TREE_CODE (type);
  int know_element_mode = 0;
  tree t;

  if (!nested && (!TYPE_SIZE (type) || integer_zerop (TYPE_SIZE (type))))
    return VOIDmode;

  switch (code)
    {
    case 128: case 138: case 140:
    case 142: case 134:
    case 135: case 130: case 136:
    case 137: case 139:
      return VOIDmode;




    case 141:
      if (GET_MODE_CLASS (TYPE_MODE (type)) == MODE_COMPLEX_FLOAT
   && TYPE_MODE (type) != TCmode)
 return GET_MODE_INNER (TYPE_MODE (type));
      else
 return VOIDmode;

    case 132:


      if (nested && TYPE_MODE (type) != TFmode)
 return TYPE_MODE (type);
      else
 return VOIDmode;

    case 143:
      return hfa_element_mode (TREE_TYPE (type), 1);

    case 131:
    case 129:
    case 133:
      for (t = TYPE_FIELDS (type); t; t = TREE_CHAIN (t))
 {
   if (TREE_CODE (t) != FIELD_DECL)
     continue;

   mode = hfa_element_mode (TREE_TYPE (t), 1);
   if (know_element_mode)
     {
       if (mode != element_mode)
  return VOIDmode;
     }
   else if (GET_MODE_CLASS (mode) != MODE_FLOAT)
     return VOIDmode;
   else
     {
       know_element_mode = 1;
       element_mode = mode;
     }
 }
      return element_mode;

    default:




      return VOIDmode;
    }

  return VOIDmode;
}
