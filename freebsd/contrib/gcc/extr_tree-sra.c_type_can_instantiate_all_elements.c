
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;




 int FIELD_DECL ;

 int TREE_CHAIN (int ) ;
 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_FIELDS (int ) ;
 int TYPE_MAIN_VARIANT (int ) ;
 int TYPE_UID (int ) ;
 int bitmap_bit_p (int ,unsigned int) ;
 int bitmap_set_bit (int ,unsigned int) ;
 int gcc_unreachable () ;
 scalar_t__ is_sra_scalar_type (int ) ;
 int sra_type_can_be_decomposed_p (int ) ;
 int sra_type_inst_cache ;

__attribute__((used)) static bool
type_can_instantiate_all_elements (tree type)
{
  if (is_sra_scalar_type (type))
    return 1;
  if (!sra_type_can_be_decomposed_p (type))
    return 0;

  switch (TREE_CODE (type))
    {
    case 128:
      {
 unsigned int cache = TYPE_UID (TYPE_MAIN_VARIANT (type)) * 2;
 tree f;

 if (bitmap_bit_p (sra_type_inst_cache, cache+0))
   return 1;
 if (bitmap_bit_p (sra_type_inst_cache, cache+1))
   return 0;

 for (f = TYPE_FIELDS (type); f ; f = TREE_CHAIN (f))
   if (TREE_CODE (f) == FIELD_DECL)
     {
       if (!type_can_instantiate_all_elements (TREE_TYPE (f)))
  {
    bitmap_set_bit (sra_type_inst_cache, cache+1);
    return 0;
  }
     }

 bitmap_set_bit (sra_type_inst_cache, cache+0);
 return 1;
      }

    case 130:
      return type_can_instantiate_all_elements (TREE_TYPE (type));

    case 129:
      return 1;

    default:
      gcc_unreachable ();
    }
}
