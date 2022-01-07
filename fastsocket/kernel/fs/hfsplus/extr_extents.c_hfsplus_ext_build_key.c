
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {scalar_t__ pad; int fork_type; void* start_block; void* cnid; } ;
struct TYPE_5__ {TYPE_1__ ext; int key_len; } ;
typedef TYPE_2__ hfsplus_btree_key ;


 scalar_t__ HFSPLUS_EXT_KEYLEN ;
 int cpu_to_be16 (scalar_t__) ;
 void* cpu_to_be32 (int ) ;

__attribute__((used)) static void hfsplus_ext_build_key(hfsplus_btree_key *key, u32 cnid,
      u32 block, u8 type)
{
 key->key_len = cpu_to_be16(HFSPLUS_EXT_KEYLEN - 2);
 key->ext.cnid = cpu_to_be32(cnid);
 key->ext.start_block = cpu_to_be32(block);
 key->ext.fork_type = type;
 key->ext.pad = 0;
}
