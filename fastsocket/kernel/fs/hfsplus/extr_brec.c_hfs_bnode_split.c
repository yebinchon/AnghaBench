
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfs_find_data {int record; int keyoffset; int entryoffset; struct hfs_bnode* bnode; struct hfs_btree* tree; } ;
struct hfs_btree {int node_size; scalar_t__ leaf_tail; int inode; } ;
struct hfs_bnode_desc {void* prev; void* num_recs; void* next; scalar_t__ reserved; int height; int type; } ;
struct hfs_bnode {scalar_t__ this; scalar_t__ next; scalar_t__ prev; int num_recs; int height; int type; int parent; } ;
typedef int node_desc ;


 int DBG_BNODE_MOD ;
 int ENOSPC ;
 struct hfs_bnode* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct hfs_bnode*) ;
 void* cpu_to_be16 (int) ;
 void* cpu_to_be32 (scalar_t__) ;
 int dprint (int ,char*,scalar_t__,scalar_t__,scalar_t__) ;
 struct hfs_bnode* hfs_bmap_alloc (struct hfs_btree*) ;
 int hfs_bnode_copy (struct hfs_bnode*,int,struct hfs_bnode*,int,int) ;
 int hfs_bnode_dump (struct hfs_bnode*) ;
 struct hfs_bnode* hfs_bnode_find (struct hfs_btree*,scalar_t__) ;
 int hfs_bnode_get (struct hfs_bnode*) ;
 int hfs_bnode_put (struct hfs_bnode*) ;
 int hfs_bnode_read (struct hfs_bnode*,struct hfs_bnode_desc*,int ,int) ;
 int hfs_bnode_read_u16 (struct hfs_bnode*,int) ;
 int hfs_bnode_write (struct hfs_bnode*,struct hfs_bnode_desc*,int ,int) ;
 int hfs_bnode_write_u16 (struct hfs_bnode*,int,int) ;
 int mark_inode_dirty (int ) ;

__attribute__((used)) static struct hfs_bnode *hfs_bnode_split(struct hfs_find_data *fd)
{
 struct hfs_btree *tree;
 struct hfs_bnode *node, *new_node;
 struct hfs_bnode_desc node_desc;
 int num_recs, new_rec_off, new_off, old_rec_off;
 int data_start, data_end, size;

 tree = fd->tree;
 node = fd->bnode;
 new_node = hfs_bmap_alloc(tree);
 if (IS_ERR(new_node))
  return new_node;
 hfs_bnode_get(node);
 dprint(DBG_BNODE_MOD, "split_nodes: %d - %d - %d\n",
  node->this, new_node->this, node->next);
 new_node->next = node->next;
 new_node->prev = node->this;
 new_node->parent = node->parent;
 new_node->type = node->type;
 new_node->height = node->height;

 size = tree->node_size / 2 - node->num_recs * 2 - 14;
 old_rec_off = tree->node_size - 4;
 num_recs = 1;
 for (;;) {
  data_start = hfs_bnode_read_u16(node, old_rec_off);
  if (data_start > size)
   break;
  old_rec_off -= 2;
  if (++num_recs < node->num_recs)
   continue;

  hfs_bnode_put(node);
  hfs_bnode_put(new_node);
  return ERR_PTR(-ENOSPC);
 }

 if (fd->record + 1 < num_recs) {



  old_rec_off += 2;
  num_recs--;
  data_start = hfs_bnode_read_u16(node, old_rec_off);
 } else {
  hfs_bnode_put(node);
  hfs_bnode_get(new_node);
  fd->bnode = new_node;
  fd->record -= num_recs;
  fd->keyoffset -= data_start - 14;
  fd->entryoffset -= data_start - 14;
 }
 new_node->num_recs = node->num_recs - num_recs;
 node->num_recs = num_recs;

 new_rec_off = tree->node_size - 2;
 new_off = 14;
 size = data_start - new_off;
 num_recs = new_node->num_recs;
 data_end = data_start;
 while (num_recs) {
  hfs_bnode_write_u16(new_node, new_rec_off, new_off);
  old_rec_off -= 2;
  new_rec_off -= 2;
  data_end = hfs_bnode_read_u16(node, old_rec_off);
  new_off = data_end - size;
  num_recs--;
 }
 hfs_bnode_write_u16(new_node, new_rec_off, new_off);
 hfs_bnode_copy(new_node, 14, node, data_start, data_end - data_start);


 node_desc.next = cpu_to_be32(new_node->next);
 node_desc.prev = cpu_to_be32(new_node->prev);
 node_desc.type = new_node->type;
 node_desc.height = new_node->height;
 node_desc.num_recs = cpu_to_be16(new_node->num_recs);
 node_desc.reserved = 0;
 hfs_bnode_write(new_node, &node_desc, 0, sizeof(node_desc));


 node->next = new_node->this;
 hfs_bnode_read(node, &node_desc, 0, sizeof(node_desc));
 node_desc.next = cpu_to_be32(node->next);
 node_desc.num_recs = cpu_to_be16(node->num_recs);
 hfs_bnode_write(node, &node_desc, 0, sizeof(node_desc));


 if (new_node->next) {
  struct hfs_bnode *next_node = hfs_bnode_find(tree, new_node->next);
  next_node->prev = new_node->this;
  hfs_bnode_read(next_node, &node_desc, 0, sizeof(node_desc));
  node_desc.prev = cpu_to_be32(next_node->prev);
  hfs_bnode_write(next_node, &node_desc, 0, sizeof(node_desc));
  hfs_bnode_put(next_node);
 } else if (node->this == tree->leaf_tail) {

  tree->leaf_tail = new_node->this;
  mark_inode_dirty(tree->inode);
 }

 hfs_bnode_dump(node);
 hfs_bnode_dump(new_node);
 hfs_bnode_put(node);

 return new_node;
}
