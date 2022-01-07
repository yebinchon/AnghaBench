
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {int FABN; int FNum; int FkType; } ;
struct TYPE_5__ {int key_len; TYPE_1__ ext; } ;
typedef TYPE_2__ hfs_btree_key ;


 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static void hfs_ext_build_key(hfs_btree_key *key, u32 cnid, u16 block, u8 type)
{
 key->key_len = 7;
 key->ext.FkType = type;
 key->ext.FNum = cpu_to_be32(cnid);
 key->ext.FABN = cpu_to_be16(block);
}
