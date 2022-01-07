
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int len; int name; } ;
struct TYPE_6__ {TYPE_2__ CName; int ParID; } ;
struct TYPE_8__ {TYPE_1__ cat; } ;
typedef TYPE_3__ btree_key ;


 int be32_to_cpu (int ) ;
 int hfs_strcmp (int ,int ,int ,int ) ;

int hfs_cat_keycmp(const btree_key *key1, const btree_key *key2)
{
 int retval;

 retval = be32_to_cpu(key1->cat.ParID) - be32_to_cpu(key2->cat.ParID);
 if (!retval)
  retval = hfs_strcmp(key1->cat.CName.name, key1->cat.CName.len,
        key2->cat.CName.name, key2->cat.CName.len);

 return retval;
}
