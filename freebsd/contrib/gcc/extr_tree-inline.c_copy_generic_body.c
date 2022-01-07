
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct TYPE_4__ {int src_fn; } ;
typedef TYPE_1__ copy_body_data ;


 int DECL_SAVED_TREE (int ) ;
 int copy_body_r ;
 int walk_tree (int *,int ,TYPE_1__*,int *) ;

__attribute__((used)) static tree
copy_generic_body (copy_body_data *id)
{
  tree body;
  tree fndecl = id->src_fn;

  body = DECL_SAVED_TREE (fndecl);
  walk_tree (&body, copy_body_r, id, ((void*)0));

  return body;
}
