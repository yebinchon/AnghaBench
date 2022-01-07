
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong ;
typedef int fs16 ;
typedef int befs_btree_nodehead ;
struct TYPE_4__ {int all_key_length; } ;
struct TYPE_5__ {scalar_t__ od_node; TYPE_1__ head; } ;
typedef TYPE_2__ befs_btree_node ;



__attribute__((used)) static fs16 *
befs_bt_keylen_index(befs_btree_node * node)
{
 const int keylen_align = 8;
 unsigned long int off =
     (sizeof (befs_btree_nodehead) + node->head.all_key_length);
 ulong tmp = off % keylen_align;

 if (tmp)
  off += keylen_align - tmp;

 return (fs16 *) ((void *) node->od_node + off);
}
