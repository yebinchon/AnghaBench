
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct hfsplus_unistr {int unicode; int length; } ;
struct TYPE_6__ {int unicode; void* length; } ;
struct TYPE_5__ {TYPE_2__ name; int parent; } ;
struct TYPE_7__ {void* key_len; TYPE_1__ cat; } ;
typedef TYPE_3__ hfsplus_btree_key ;


 int be16_to_cpu (int ) ;
 void* cpu_to_be16 (int) ;
 int cpu_to_be32 (int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static void hfsplus_cat_build_key_uni(hfsplus_btree_key *key, u32 parent,
          struct hfsplus_unistr *name)
{
 int ustrlen;

 ustrlen = be16_to_cpu(name->length);
 key->cat.parent = cpu_to_be32(parent);
 key->cat.name.length = cpu_to_be16(ustrlen);
 ustrlen *= 2;
 memcpy(key->cat.name.unicode, name->unicode, ustrlen);
 key->key_len = cpu_to_be16(6 + ustrlen);
}
