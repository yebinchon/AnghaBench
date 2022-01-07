
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int splay_tree_value ;


 int DECL_UID (scalar_t__) ;
 int all_module_statics ;
 int bitmap_bit_p (int ,int) ;
 int bitmap_set_bit (int ,int) ;
 int reference_vars_to_consider ;
 int splay_tree_insert (int ,int,int ) ;

__attribute__((used)) static inline void
add_static_var (tree var)
{
  int uid = DECL_UID (var);
  if (!bitmap_bit_p (all_module_statics, uid))
    {
      splay_tree_insert (reference_vars_to_consider,
    uid, (splay_tree_value)var);
      bitmap_set_bit (all_module_statics, uid);
    }
}
