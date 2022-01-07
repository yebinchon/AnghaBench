
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TREE_TYPE (int ) ;
 int TYPE_MAIN_VARIANT (int ) ;
 int create_tmp_var (int ,int ) ;
 int get_name (int ) ;

__attribute__((used)) static inline tree
create_tmp_from_val (tree val)
{
  return create_tmp_var (TYPE_MAIN_VARIANT (TREE_TYPE (val)), get_name (val));
}
