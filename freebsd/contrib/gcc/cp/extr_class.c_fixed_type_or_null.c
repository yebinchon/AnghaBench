
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* tree ;
typedef int htab_t ;



 int const ARRAY_TYPE ;



 int DECL_CONSTRUCTOR_P (int ) ;
 int DECL_DESTRUCTOR_P (int ) ;
 int DECL_FIELD_IS_BASE (void*) ;
 void* DECL_INITIAL (void*) ;
 int DECL_LANG_SPECIFIC (int ) ;
 int DECL_P (void*) ;


 int INSERT ;
 int const INTEGER_CST ;
 int IS_AGGR_TYPE (void*) ;


 void* NULL_TREE ;


 int POINTER_TYPE_P (void*) ;
 int const REFERENCE_TYPE ;



 int const TREE_CODE (void*) ;
 int TREE_HAS_CONSTRUCTOR (void*) ;
 void* TREE_OPERAND (void*,int) ;
 void* TREE_TYPE (void*) ;

 void* current_class_ptr ;
 int current_function_decl ;
 void* get_base_address (void*) ;
 int htab_create (int,int ,int ,int *) ;
 int htab_eq_pointer ;
 int htab_find (int ,void*) ;
 void** htab_find_slot (int ,void*,int ) ;
 int htab_hash_pointer ;
 int htab_remove_elt (int ,void*) ;

__attribute__((used)) static tree
fixed_type_or_null (tree instance, int* nonnull, int* cdtorp)
{
  switch (TREE_CODE (instance))
    {
    case 136:
      if (POINTER_TYPE_P (TREE_TYPE (instance)))
 return NULL_TREE;
      else
 return fixed_type_or_null (TREE_OPERAND (instance, 0),
       nonnull, cdtorp);

    case 140:

      if (TREE_HAS_CONSTRUCTOR (instance))
 {
   if (nonnull)
     *nonnull = 1;
   return TREE_TYPE (instance);
 }
      return NULL_TREE;

    case 130:

      if (TREE_HAS_CONSTRUCTOR (instance))
 {
   if (nonnull)
     *nonnull = 1;
   return TREE_TYPE (instance);
 }
      return fixed_type_or_null (TREE_OPERAND (instance, 0), nonnull, cdtorp);

    case 132:
    case 135:
      if (TREE_CODE (TREE_OPERAND (instance, 0)) == 141)
 return fixed_type_or_null (TREE_OPERAND (instance, 0), nonnull, cdtorp);
      if (TREE_CODE (TREE_OPERAND (instance, 1)) == INTEGER_CST)

 return fixed_type_or_null (TREE_OPERAND (instance, 0), nonnull, cdtorp);
      return NULL_TREE;

    case 134:
    case 138:
      return fixed_type_or_null (TREE_OPERAND (instance, 0), nonnull, cdtorp);

    case 141:
      instance = TREE_OPERAND (instance, 0);
      if (nonnull)
 {


   tree t = get_base_address (instance);

   if (t && DECL_P (t))
     *nonnull = 1;
 }
      return fixed_type_or_null (instance, nonnull, cdtorp);

    case 139:


      if (DECL_FIELD_IS_BASE (TREE_OPERAND (instance, 1)))
 return fixed_type_or_null (TREE_OPERAND (instance, 0), nonnull, cdtorp);
      return fixed_type_or_null (TREE_OPERAND (instance, 1), nonnull, cdtorp);

    case 128:
    case 137:
      if (TREE_CODE (TREE_TYPE (instance)) == ARRAY_TYPE
   && IS_AGGR_TYPE (TREE_TYPE (TREE_TYPE (instance))))
 {
   if (nonnull)
     *nonnull = 1;
   return TREE_TYPE (TREE_TYPE (instance));
 }

    case 129:
    case 133:
    case 131:
      if (IS_AGGR_TYPE (TREE_TYPE (instance)))
 {
   if (nonnull)
     *nonnull = 1;
   return TREE_TYPE (instance);
 }
      else if (instance == current_class_ptr)
 {
   if (nonnull)
     *nonnull = 1;


   if (DECL_LANG_SPECIFIC (current_function_decl)
       && (DECL_CONSTRUCTOR_P (current_function_decl)
    || DECL_DESTRUCTOR_P (current_function_decl)))
     {
       if (cdtorp)
  *cdtorp = 1;
       return TREE_TYPE (TREE_TYPE (instance));
     }
 }
      else if (TREE_CODE (TREE_TYPE (instance)) == REFERENCE_TYPE)
 {

   static htab_t ht;
   if (!ht)
     ht = htab_create (37,
         htab_hash_pointer,
         htab_eq_pointer,
                      ((void*)0));


   if (nonnull)
     *nonnull = 1;




   if (TREE_CODE (instance) == 128
       && DECL_INITIAL (instance)
       && !htab_find (ht, instance))
     {
       tree type;
       void **slot;

       slot = htab_find_slot (ht, instance, INSERT);
       *slot = instance;
       type = fixed_type_or_null (DECL_INITIAL (instance),
      nonnull, cdtorp);
       htab_remove_elt (ht, instance);

       return type;
     }
 }
      return NULL_TREE;

    default:
      return NULL_TREE;
    }
}
