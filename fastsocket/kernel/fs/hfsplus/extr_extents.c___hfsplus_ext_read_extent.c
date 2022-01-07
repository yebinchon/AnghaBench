
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct hfsplus_extent {int dummy; } ;
struct hfs_find_data {int entrylength; int entryoffset; int bnode; TYPE_4__* search_key; TYPE_2__* key; } ;
typedef int hfsplus_extent_rec ;
struct TYPE_7__ {scalar_t__ cnid; scalar_t__ fork_type; } ;
struct TYPE_8__ {TYPE_3__ ext; } ;
struct TYPE_5__ {scalar_t__ cnid; scalar_t__ fork_type; } ;
struct TYPE_6__ {TYPE_1__ ext; } ;


 int EIO ;
 int ENOENT ;
 int hfs_bnode_read (int ,struct hfsplus_extent*,int ,int) ;
 int hfs_brec_find (struct hfs_find_data*) ;
 int hfsplus_ext_build_key (TYPE_4__*,int ,int ,int ) ;

__attribute__((used)) static inline int __hfsplus_ext_read_extent(struct hfs_find_data *fd,
         struct hfsplus_extent *extent,
         u32 cnid, u32 block, u8 type)
{
 int res;

 hfsplus_ext_build_key(fd->search_key, cnid, block, type);
 fd->key->ext.cnid = 0;
 res = hfs_brec_find(fd);
 if (res && res != -ENOENT)
  return res;
 if (fd->key->ext.cnid != fd->search_key->ext.cnid ||
     fd->key->ext.fork_type != fd->search_key->ext.fork_type)
  return -ENOENT;
 if (fd->entrylength != sizeof(hfsplus_extent_rec))
  return -EIO;
 hfs_bnode_read(fd->bnode, extent, fd->entryoffset, sizeof(hfsplus_extent_rec));
 return 0;
}
