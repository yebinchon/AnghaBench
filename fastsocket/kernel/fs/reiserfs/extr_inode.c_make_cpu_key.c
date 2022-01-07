
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct cpu_key {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {int k_objectid; int k_dir_id; } ;


 TYPE_1__* INODE_PKEY (struct inode*) ;
 int _make_cpu_key (struct cpu_key*,int ,int ,int ,int ,int,int) ;
 int get_inode_item_key_version (struct inode*) ;
 int le32_to_cpu (int ) ;

void make_cpu_key(struct cpu_key *key, struct inode *inode, loff_t offset,
    int type, int length)
{
 _make_cpu_key(key, get_inode_item_key_version(inode),
        le32_to_cpu(INODE_PKEY(inode)->k_dir_id),
        le32_to_cpu(INODE_PKEY(inode)->k_objectid), offset, type,
        length);
}
