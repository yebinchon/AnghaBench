
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct qstr {int len; int name; } ;
struct TYPE_7__ {scalar_t__ length; } ;
struct TYPE_5__ {TYPE_4__ name; int parent; } ;
struct TYPE_6__ {int key_len; TYPE_1__ cat; } ;
typedef TYPE_2__ hfsplus_btree_key ;


 int be16_to_cpu (scalar_t__) ;
 int cpu_to_be16 (int) ;
 int cpu_to_be32 (int ) ;
 int hfsplus_asc2uni (struct super_block*,TYPE_4__*,int ,int ) ;

void hfsplus_cat_build_key(struct super_block *sb, hfsplus_btree_key *key,
      u32 parent, struct qstr *str)
{
 int len;

 key->cat.parent = cpu_to_be32(parent);
 if (str) {
  hfsplus_asc2uni(sb, &key->cat.name, str->name, str->len);
  len = be16_to_cpu(key->cat.name.length);
 } else {
  key->cat.name.length = 0;
  len = 0;
 }
 key->key_len = cpu_to_be16(6 + 2 * len);
}
