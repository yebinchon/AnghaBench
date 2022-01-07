
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hash; } ;
struct dentry {TYPE_1__ d_name; int d_parent; } ;


 int __d_rehash (struct dentry*,int ) ;
 int d_hash (int ,int ) ;

__attribute__((used)) static void _d_rehash(struct dentry * entry)
{
 __d_rehash(entry, d_hash(entry->d_parent, entry->d_name.hash));
}
