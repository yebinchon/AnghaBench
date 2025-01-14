
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {unsigned char* name; scalar_t__ len; } ;
struct fat_mount_options {int dummy; } ;
struct dentry {int d_sb; } ;
struct TYPE_2__ {struct fat_mount_options options; } ;


 int MSDOS_NAME ;
 TYPE_1__* MSDOS_SB (int ) ;
 int memcmp (unsigned char*,unsigned char*,int) ;
 int msdos_format_name (unsigned char*,scalar_t__,unsigned char*,struct fat_mount_options*) ;

__attribute__((used)) static int msdos_cmp(struct dentry *dentry, struct qstr *a, struct qstr *b)
{
 struct fat_mount_options *options = &MSDOS_SB(dentry->d_sb)->options;
 unsigned char a_msdos_name[MSDOS_NAME], b_msdos_name[MSDOS_NAME];
 int error;

 error = msdos_format_name(a->name, a->len, a_msdos_name, options);
 if (error)
  goto old_compare;
 error = msdos_format_name(b->name, b->len, b_msdos_name, options);
 if (error)
  goto old_compare;
 error = memcmp(a_msdos_name, b_msdos_name, MSDOS_NAME);
out:
 return error;

old_compare:
 error = 1;
 if (a->len == b->len)
  error = memcmp(a->name, b->name, a->len);
 goto out;
}
