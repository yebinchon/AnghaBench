
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_5__ {int max_size; int free_node_ptr; int root_node_ptr; int data_type; int max_depth; int node_size; int magic; } ;
typedef TYPE_1__ befs_disk_btree_super ;
typedef int befs_data_stream ;
struct TYPE_6__ {void* magic; void* max_size; void* free_node_ptr; void* root_node_ptr; void* data_type; void* max_depth; void* node_size; } ;
typedef TYPE_2__ befs_btree_super ;


 void* BEFS_BTREE_MAGIC ;
 int BEFS_ERR ;
 int BEFS_OK ;
 int befs_debug (struct super_block*,char*) ;
 int befs_dump_index_entry (struct super_block*,TYPE_1__*) ;
 int befs_error (struct super_block*,char*) ;
 struct buffer_head* befs_read_datastream (struct super_block*,int *,int ,int *) ;
 int brelse (struct buffer_head*) ;
 void* fs32_to_cpu (struct super_block*,int ) ;
 void* fs64_to_cpu (struct super_block*,int ) ;

__attribute__((used)) static int
befs_bt_read_super(struct super_block *sb, befs_data_stream * ds,
     befs_btree_super * sup)
{
 struct buffer_head *bh = ((void*)0);
 befs_disk_btree_super *od_sup = ((void*)0);

 befs_debug(sb, "---> befs_btree_read_super()");

 bh = befs_read_datastream(sb, ds, 0, ((void*)0));

 if (!bh) {
  befs_error(sb, "Couldn't read index header.");
  goto error;
 }
 od_sup = (befs_disk_btree_super *) bh->b_data;
 befs_dump_index_entry(sb, od_sup);

 sup->magic = fs32_to_cpu(sb, od_sup->magic);
 sup->node_size = fs32_to_cpu(sb, od_sup->node_size);
 sup->max_depth = fs32_to_cpu(sb, od_sup->max_depth);
 sup->data_type = fs32_to_cpu(sb, od_sup->data_type);
 sup->root_node_ptr = fs64_to_cpu(sb, od_sup->root_node_ptr);
 sup->free_node_ptr = fs64_to_cpu(sb, od_sup->free_node_ptr);
 sup->max_size = fs64_to_cpu(sb, od_sup->max_size);

 brelse(bh);
 if (sup->magic != BEFS_BTREE_MAGIC) {
  befs_error(sb, "Index header has bad magic.");
  goto error;
 }

 befs_debug(sb, "<--- befs_btree_read_super()");
 return BEFS_OK;

      error:
 befs_debug(sb, "<--- befs_btree_read_super() ERROR");
 return BEFS_ERR;
}
