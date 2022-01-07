
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fs64 ;
typedef int fs16 ;
struct TYPE_5__ {int all_key_count; } ;
struct TYPE_6__ {TYPE_1__ head; } ;
typedef TYPE_2__ befs_btree_node ;


 scalar_t__ befs_bt_keylen_index (TYPE_2__*) ;

__attribute__((used)) static fs64 *
befs_bt_valarray(befs_btree_node * node)
{
 void *keylen_index_start = (void *) befs_bt_keylen_index(node);
 size_t keylen_index_size = node->head.all_key_count * sizeof (fs16);

 return (fs64 *) (keylen_index_start + keylen_index_size);
}
