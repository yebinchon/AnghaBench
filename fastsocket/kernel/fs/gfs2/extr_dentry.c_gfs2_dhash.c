
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int len; int name; int hash; } ;
struct dentry {int dummy; } ;


 int gfs2_disk_hash (int ,int ) ;

__attribute__((used)) static int gfs2_dhash(struct dentry *dentry, struct qstr *str)
{
 str->hash = gfs2_disk_hash(str->name, str->len);
 return 0;
}
