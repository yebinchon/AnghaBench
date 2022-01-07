
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ AGGREGATE_TYPE_P (int ) ;

 int BINFO_BASE_ITERATE (int ,int,int ) ;
 int BINFO_TYPE (int ) ;
 int FIELD_DECL ;


 scalar_t__ SSE_REG_MODE_P (int) ;
 int TREE_CHAIN (int ) ;
 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_ALIGN (int ) ;
 int TYPE_BINFO (int ) ;
 int TYPE_FIELDS (int ) ;
 int TYPE_MODE (int ) ;
 int TYPE_USER_ALIGN (int ) ;

 int gcc_unreachable () ;

__attribute__((used)) static bool
contains_128bit_aligned_vector_p (tree type)
{
  enum machine_mode mode = TYPE_MODE (type);
  if (SSE_REG_MODE_P (mode)
      && (!TYPE_USER_ALIGN (type) || TYPE_ALIGN (type) > 128))
    return 1;
  if (TYPE_ALIGN (type) < 128)
    return 0;

  if (AGGREGATE_TYPE_P (type))
    {

      switch (TREE_CODE (type))
 {
 case 129:
 case 128:
 case 130:
   {
     tree field;

     if (TYPE_BINFO (type))
       {
  tree binfo, base_binfo;
  int i;

  for (binfo = TYPE_BINFO (type), i = 0;
       BINFO_BASE_ITERATE (binfo, i, base_binfo); i++)
    if (contains_128bit_aligned_vector_p
        (BINFO_TYPE (base_binfo)))
      return 1;
       }

     for (field = TYPE_FIELDS (type); field; field = TREE_CHAIN (field))
       {
  if (TREE_CODE (field) == FIELD_DECL
      && contains_128bit_aligned_vector_p (TREE_TYPE (field)))
    return 1;
       }
     break;
   }

 case 131:

   if (contains_128bit_aligned_vector_p (TREE_TYPE (type)))
     return 1;
   break;

 default:
   gcc_unreachable ();
 }
    }
  return 0;
}
