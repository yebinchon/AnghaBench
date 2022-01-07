
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;


 int BASE_CONVERSION_BADNESS ;
 int BOOLEAN_CONVERSION_BADNESS ;
 int FLOAT_CONVERSION_BADNESS ;
 int FLOAT_PROMOTION_BADNESS ;
 int INCOMPATIBLE_TYPE_BADNESS ;
 int INTEGER_CONVERSION_BADNESS ;
 int INTEGER_PROMOTION_BADNESS ;
 int INT_FLOAT_CONVERSION_BADNESS ;
 int NS_POINTER_CONVERSION_BADNESS ;
 int POINTER_CONVERSION_BADNESS ;
 int REFERENCE_CONVERSION_BADNESS ;
 int TYPE_CODE (struct type*) ;
 int TYPE_CODE_TYPEDEF ;


 struct type* TYPE_FIELD_TYPE (struct type*,int ) ;
 int TYPE_LENGTH (struct type*) ;
 char* TYPE_NAME (struct type*) ;
 int TYPE_NOSIGN (struct type*) ;
 struct type* TYPE_TARGET_TYPE (struct type*) ;
 int TYPE_UNSIGNED (struct type*) ;
 int VOID_PTR_CONVERSION_BADNESS ;
 struct type* check_typedef (struct type*) ;
 int fprintf_filtered (int ,char*,char*,int,char*,int) ;
 int gdb_stderr ;
 int integer_types_same_name_p (char*,char*) ;
 int is_ancestor (struct type*,struct type*) ;
 scalar_t__ overload_debug ;
 int strcmp (char*,char*) ;

int
rank_one_type (struct type *parm, struct type *arg)
{




  if (parm == arg)
    return 0;


  if (TYPE_CODE (parm) == TYPE_CODE_TYPEDEF)
    parm = check_typedef (parm);
  if (TYPE_CODE (arg) == TYPE_CODE_TYPEDEF)
    arg = check_typedef (arg);
  if (TYPE_NAME (parm) && TYPE_NAME (arg) &&
      !strcmp (TYPE_NAME (parm), TYPE_NAME (arg)))
      return 0;


  if (parm == arg)
    return 0;



  if (TYPE_CODE (arg) == 132)
    return (rank_one_type (parm, TYPE_TARGET_TYPE (arg))
     + REFERENCE_CONVERSION_BADNESS);
  if (TYPE_CODE (parm) == 132)
    return (rank_one_type (TYPE_TARGET_TYPE (parm), arg)
     + REFERENCE_CONVERSION_BADNESS);
  if (overload_debug)

    fprintf_filtered (gdb_stderr,"------ Arg is %s [%d], parm is %s [%d]\n",
        TYPE_NAME (arg), TYPE_CODE (arg), TYPE_NAME (parm), TYPE_CODE (parm));



  switch (TYPE_CODE (parm))
    {
    case 134:
      switch (TYPE_CODE (arg))
 {
 case 134:
   if (TYPE_CODE (TYPE_TARGET_TYPE (parm)) == 128)
     return VOID_PTR_CONVERSION_BADNESS;
   else
     return rank_one_type (TYPE_TARGET_TYPE (parm), TYPE_TARGET_TYPE (arg));
 case 144:
   return rank_one_type (TYPE_TARGET_TYPE (parm), TYPE_TARGET_TYPE (arg));
 case 138:
   return rank_one_type (TYPE_TARGET_TYPE (parm), arg);
 case 137:
 case 140:
 case 142:
 case 133:
 case 143:
   return POINTER_CONVERSION_BADNESS;
 default:
   return INCOMPATIBLE_TYPE_BADNESS;
 }
    case 144:
      switch (TYPE_CODE (arg))
 {
 case 134:
 case 144:
   return rank_one_type (TYPE_TARGET_TYPE (parm), TYPE_TARGET_TYPE (arg));
 default:
   return INCOMPATIBLE_TYPE_BADNESS;
 }
    case 138:
      switch (TYPE_CODE (arg))
 {
 case 134:
   return rank_one_type (parm, TYPE_TARGET_TYPE (arg));
 default:
   return INCOMPATIBLE_TYPE_BADNESS;
 }
    case 137:
      switch (TYPE_CODE (arg))
 {
 case 137:
   if (TYPE_LENGTH (arg) == TYPE_LENGTH (parm))
     {


       if (TYPE_NOSIGN (parm))
  {

    if (TYPE_NOSIGN (arg))
      return 0;
    else
      return INTEGER_CONVERSION_BADNESS;
  }
       else if (TYPE_UNSIGNED (parm))
  {
    if (TYPE_UNSIGNED (arg))
      {

        if (integer_types_same_name_p (TYPE_NAME (parm), TYPE_NAME (arg)))
   return 0;
        else if (integer_types_same_name_p (TYPE_NAME (arg), "int")
          && integer_types_same_name_p (TYPE_NAME (parm), "long"))
   return INTEGER_PROMOTION_BADNESS;
        else
   return INTEGER_CONVERSION_BADNESS;
      }
    else
      {
        if (integer_types_same_name_p (TYPE_NAME (arg), "long")
     && integer_types_same_name_p (TYPE_NAME (parm), "int"))
   return INTEGER_CONVERSION_BADNESS;
        else
   return INTEGER_CONVERSION_BADNESS;
      }
  }
       else if (!TYPE_NOSIGN (arg) && !TYPE_UNSIGNED (arg))
  {
    if (integer_types_same_name_p (TYPE_NAME (parm), TYPE_NAME (arg)))
      return 0;
    else if (integer_types_same_name_p (TYPE_NAME (arg), "int")
      && integer_types_same_name_p (TYPE_NAME (parm), "long"))
      return INTEGER_PROMOTION_BADNESS;
    else
      return INTEGER_CONVERSION_BADNESS;
  }
       else
  return INTEGER_CONVERSION_BADNESS;
     }
   else if (TYPE_LENGTH (arg) < TYPE_LENGTH (parm))
     return INTEGER_PROMOTION_BADNESS;
   else
     return INTEGER_CONVERSION_BADNESS;
 case 140:
 case 142:
 case 133:
 case 143:
   return INTEGER_PROMOTION_BADNESS;
 case 139:
   return INT_FLOAT_CONVERSION_BADNESS;
 case 134:
   return NS_POINTER_CONVERSION_BADNESS;
 default:
   return INCOMPATIBLE_TYPE_BADNESS;
 }
      break;
    case 140:
      switch (TYPE_CODE (arg))
 {
 case 137:
 case 142:
 case 133:
 case 143:
 case 140:
   return INTEGER_CONVERSION_BADNESS;
 case 139:
   return INT_FLOAT_CONVERSION_BADNESS;
 default:
   return INCOMPATIBLE_TYPE_BADNESS;
 }
      break;
    case 142:
      switch (TYPE_CODE (arg))
 {
 case 133:
 case 143:
 case 140:
   return INTEGER_CONVERSION_BADNESS;
 case 139:
   return INT_FLOAT_CONVERSION_BADNESS;
 case 137:
   if (TYPE_LENGTH (arg) > TYPE_LENGTH (parm))
     return INTEGER_CONVERSION_BADNESS;
   else if (TYPE_LENGTH (arg) < TYPE_LENGTH (parm))
     return INTEGER_PROMOTION_BADNESS;

 case 142:


   if (TYPE_NOSIGN (parm))
     {
       if (TYPE_NOSIGN (arg))
  return 0;
       else
  return INTEGER_CONVERSION_BADNESS;
     }
   else if (TYPE_UNSIGNED (parm))
     {
       if (TYPE_UNSIGNED (arg))
  return 0;
       else
  return INTEGER_PROMOTION_BADNESS;
     }
   else if (!TYPE_NOSIGN (arg) && !TYPE_UNSIGNED (arg))
     return 0;
   else
     return INTEGER_CONVERSION_BADNESS;
 default:
   return INCOMPATIBLE_TYPE_BADNESS;
 }
      break;
    case 133:
      switch (TYPE_CODE (arg))
 {
 case 137:
 case 142:
 case 133:
 case 143:
 case 140:
   return INTEGER_CONVERSION_BADNESS;
 case 139:
   return INT_FLOAT_CONVERSION_BADNESS;
 default:
   return INCOMPATIBLE_TYPE_BADNESS;
 }
      break;
    case 143:
      switch (TYPE_CODE (arg))
 {
 case 137:
 case 142:
 case 133:
 case 140:
 case 139:
 case 134:
   return BOOLEAN_CONVERSION_BADNESS;
 case 143:
   return 0;
 default:
   return INCOMPATIBLE_TYPE_BADNESS;
 }
      break;
    case 139:
      switch (TYPE_CODE (arg))
 {
 case 139:
   if (TYPE_LENGTH (arg) < TYPE_LENGTH (parm))
     return FLOAT_PROMOTION_BADNESS;
   else if (TYPE_LENGTH (arg) == TYPE_LENGTH (parm))
     return 0;
   else
     return FLOAT_CONVERSION_BADNESS;
 case 137:
 case 143:
 case 140:
 case 133:
 case 142:
   return INT_FLOAT_CONVERSION_BADNESS;
 default:
   return INCOMPATIBLE_TYPE_BADNESS;
 }
      break;
    case 141:
      switch (TYPE_CODE (arg))
 {
 case 139:
   return FLOAT_PROMOTION_BADNESS;
 case 141:
   return 0;
 default:
   return INCOMPATIBLE_TYPE_BADNESS;
 }
      break;
    case 130:

      switch (TYPE_CODE (arg))
 {
 case 130:

   if (is_ancestor (parm, arg))
     return BASE_CONVERSION_BADNESS;

 default:
   return INCOMPATIBLE_TYPE_BADNESS;
 }
      break;
    case 129:
      switch (TYPE_CODE (arg))
 {
 case 129:
 default:
   return INCOMPATIBLE_TYPE_BADNESS;
 }
      break;
    case 136:
      switch (TYPE_CODE (arg))
 {
 default:
   return INCOMPATIBLE_TYPE_BADNESS;
 }
      break;
    case 135:
      switch (TYPE_CODE (arg))
 {

 default:
   return INCOMPATIBLE_TYPE_BADNESS;
 }
      break;
    case 132:
      switch (TYPE_CODE (arg))
 {

 default:
   return INCOMPATIBLE_TYPE_BADNESS;
 }

      break;
    case 131:
      switch (TYPE_CODE (arg))
 {

 case 131:
   return rank_one_type (TYPE_FIELD_TYPE (parm, 0), TYPE_FIELD_TYPE (arg, 0));
 default:
   return INCOMPATIBLE_TYPE_BADNESS;
 }
      break;
    case 128:
    default:
      return INCOMPATIBLE_TYPE_BADNESS;
    }
}
