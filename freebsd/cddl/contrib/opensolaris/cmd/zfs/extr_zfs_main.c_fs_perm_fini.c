
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int who_perm_t ;
struct TYPE_9__ {int who_perm; } ;
typedef TYPE_1__ who_perm_node_t ;
struct TYPE_10__ {int fsp_uge_avl; int fsp_sc_avl; } ;
typedef TYPE_2__ fs_perm_t ;


 int free (TYPE_1__*) ;
 int uu_avl_destroy (int ) ;
 TYPE_1__* uu_avl_first (int ) ;
 TYPE_1__* uu_avl_next (int ,TYPE_1__*) ;
 int uu_avl_remove (int ,TYPE_1__*) ;
 int who_perm_fini (int *) ;

__attribute__((used)) static inline void
fs_perm_fini(fs_perm_t *fsperm)
{
 who_perm_node_t *node = uu_avl_first(fsperm->fsp_sc_avl);
 while (node != ((void*)0)) {
  who_perm_node_t *next_node = uu_avl_next(fsperm->fsp_sc_avl,
      node);
  who_perm_t *who_perm = &node->who_perm;
  who_perm_fini(who_perm);
  uu_avl_remove(fsperm->fsp_sc_avl, node);
  free(node);
  node = next_node;
 }

 node = uu_avl_first(fsperm->fsp_uge_avl);
 while (node != ((void*)0)) {
  who_perm_node_t *next_node = uu_avl_next(fsperm->fsp_uge_avl,
      node);
  who_perm_t *who_perm = &node->who_perm;
  who_perm_fini(who_perm);
  uu_avl_remove(fsperm->fsp_uge_avl, node);
  free(node);
  node = next_node;
 }

 uu_avl_destroy(fsperm->fsp_sc_avl);
 uu_avl_destroy(fsperm->fsp_uge_avl);
}
