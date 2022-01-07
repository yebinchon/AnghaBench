
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mesh_table {void* known_gates; void* mean_chain_len; int * copy_node; int * free_node; } ;
struct hlist_head {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_HLIST_HEAD (void*) ;
 int INIT_PATHS_SIZE_ORDER ;
 void* MEAN_CHAIN_LEN ;
 int RCU_INIT_POINTER (int ,struct mesh_table*) ;
 void* kzalloc (int,int ) ;
 int mesh_path_node_copy ;
 int mesh_path_node_free ;
 int mesh_paths ;
 struct mesh_table* mesh_table_alloc (int ) ;
 int mesh_table_free (struct mesh_table*,int) ;
 int mpp_paths ;

int mesh_pathtbl_init(void)
{
 struct mesh_table *tbl_path, *tbl_mpp;
 int ret;

 tbl_path = mesh_table_alloc(INIT_PATHS_SIZE_ORDER);
 if (!tbl_path)
  return -ENOMEM;
 tbl_path->free_node = &mesh_path_node_free;
 tbl_path->copy_node = &mesh_path_node_copy;
 tbl_path->mean_chain_len = MEAN_CHAIN_LEN;
 tbl_path->known_gates = kzalloc(sizeof(struct hlist_head), GFP_ATOMIC);
 if (!tbl_path->known_gates) {
  ret = -ENOMEM;
  goto free_path;
 }
 INIT_HLIST_HEAD(tbl_path->known_gates);


 tbl_mpp = mesh_table_alloc(INIT_PATHS_SIZE_ORDER);
 if (!tbl_mpp) {
  ret = -ENOMEM;
  goto free_path;
 }
 tbl_mpp->free_node = &mesh_path_node_free;
 tbl_mpp->copy_node = &mesh_path_node_copy;
 tbl_mpp->mean_chain_len = MEAN_CHAIN_LEN;
 tbl_mpp->known_gates = kzalloc(sizeof(struct hlist_head), GFP_ATOMIC);
 if (!tbl_mpp->known_gates) {
  ret = -ENOMEM;
  goto free_mpp;
 }
 INIT_HLIST_HEAD(tbl_mpp->known_gates);


 RCU_INIT_POINTER(mesh_paths, tbl_path);
 RCU_INIT_POINTER(mpp_paths, tbl_mpp);

 return 0;

free_mpp:
 mesh_table_free(tbl_mpp, 1);
free_path:
 mesh_table_free(tbl_path, 1);
 return ret;
}
