
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ BINFO_BASE_ACCESS (scalar_t__,unsigned int) ;
 unsigned int BINFO_N_BASE_BINFOS (scalar_t__) ;
 scalar_t__ CLASSTYPE_CONSTRUCTORS (scalar_t__) ;
 scalar_t__ CLASSTYPE_DESTRUCTORS (scalar_t__) ;
 scalar_t__ CLASSTYPE_FRIEND_CLASSES (scalar_t__) ;
 int CLASSTYPE_LAZY_COPY_CTOR (scalar_t__) ;
 int CLASSTYPE_LAZY_DEFAULT_CTOR (scalar_t__) ;
 scalar_t__ CLASSTYPE_TEMPLATE_INSTANTIATION (scalar_t__) ;
 int DECL_ARTIFICIAL (scalar_t__) ;
 int DECL_CONSTRUCTOR_P (scalar_t__) ;
 int DECL_DESTRUCTOR_P (scalar_t__) ;
 scalar_t__ DECL_FRIENDLIST (int ) ;
 scalar_t__ DECL_STATIC_FUNCTION_P (scalar_t__) ;
 int OPT_Wctor_dtor_privacy ;
 scalar_t__ OVL_CURRENT (scalar_t__) ;
 scalar_t__ OVL_NEXT (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_PRIVATE (scalar_t__) ;
 scalar_t__ TYPE_BINFO (scalar_t__) ;
 scalar_t__ TYPE_HAS_CONSTRUCTOR (scalar_t__) ;
 int TYPE_HAS_INIT_REF (scalar_t__) ;
 int TYPE_MAIN_DECL (scalar_t__) ;
 scalar_t__ TYPE_METHODS (scalar_t__) ;
 scalar_t__ access_private_node ;
 int warn_ctor_dtor_privacy ;
 int warning (int ,char*,scalar_t__) ;

__attribute__((used)) static void
maybe_warn_about_overly_private_class (tree t)
{
  int has_member_fn = 0;
  int has_nonprivate_method = 0;
  tree fn;

  if (!warn_ctor_dtor_privacy


      || (CLASSTYPE_FRIEND_CLASSES (t)
   || DECL_FRIENDLIST (TYPE_MAIN_DECL (t)))


      || CLASSTYPE_TEMPLATE_INSTANTIATION (t))


    return;
  for (fn = TYPE_METHODS (t); fn; fn = TREE_CHAIN (fn))


    if (!DECL_ARTIFICIAL (fn))
      {
 if (!TREE_PRIVATE (fn))
   {
     if (DECL_STATIC_FUNCTION_P (fn))




       return;

     has_nonprivate_method = 1;

   }
 else if (!DECL_CONSTRUCTOR_P (fn) && !DECL_DESTRUCTOR_P (fn))
   has_member_fn = 1;
      }

  if (!has_nonprivate_method && has_member_fn)
    {






      unsigned i;
      tree binfo = TYPE_BINFO (t);

      for (i = 0; i != BINFO_N_BASE_BINFOS (binfo); i++)
 if (BINFO_BASE_ACCESS (binfo, i) != access_private_node)
   {
     has_nonprivate_method = 1;
     break;
   }
      if (!has_nonprivate_method)
 {
   warning (OPT_Wctor_dtor_privacy,
     "all member functions in class %qT are private", t);
   return;
 }
    }




  fn = CLASSTYPE_DESTRUCTORS (t);
  if (fn && TREE_PRIVATE (fn))
    {
      warning (OPT_Wctor_dtor_privacy,
        "%q#T only defines a private destructor and has no friends",
        t);
      return;
    }

  if (TYPE_HAS_CONSTRUCTOR (t)

      && (!CLASSTYPE_LAZY_DEFAULT_CTOR (t)
   || !CLASSTYPE_LAZY_COPY_CTOR (t)))
    {
      int nonprivate_ctor = 0;
      if (!TYPE_HAS_INIT_REF (t))
 nonprivate_ctor = 1;
      else
 for (fn = CLASSTYPE_CONSTRUCTORS (t); fn; fn = OVL_NEXT (fn))
   {
     tree ctor = OVL_CURRENT (fn);






     if (! TREE_PRIVATE (ctor))
       {
  nonprivate_ctor = 1;
  break;
       }
   }

      if (nonprivate_ctor == 0)
 {
   warning (OPT_Wctor_dtor_privacy,
     "%q#T only defines private constructors and has no friends",
     t);
   return;
 }
    }
}
