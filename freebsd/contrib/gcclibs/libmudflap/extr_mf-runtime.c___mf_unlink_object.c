
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mfsplay_tree_key ;
typedef int mfsplay_tree ;
struct TYPE_3__ {scalar_t__ low; int type; } ;
typedef TYPE_1__ __mf_object_t ;


 int __mf_object_tree (int ) ;
 int mfsplay_tree_remove (int ,int ) ;

__attribute__((used)) static void
__mf_unlink_object (__mf_object_t *node)
{
  mfsplay_tree t = __mf_object_tree (node->type);
  mfsplay_tree_remove (t, (mfsplay_tree_key) node->low);
}
