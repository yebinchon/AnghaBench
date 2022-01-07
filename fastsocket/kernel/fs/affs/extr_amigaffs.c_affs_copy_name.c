
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;


 int memcpy (unsigned char*,int ,int) ;
 int min (int ,unsigned int) ;

int
affs_copy_name(unsigned char *bstr, struct dentry *dentry)
{
 int len = min(dentry->d_name.len, 30u);

 *bstr++ = len;
 memcpy(bstr, dentry->d_name.name, len);
 return len;
}
