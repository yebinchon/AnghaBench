
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct hpfs_inode_info {scalar_t__ i_conv; } ;


 scalar_t__ CONV_AUTO ;
 scalar_t__ CONV_BINARY ;
 scalar_t__ CONV_TEXT ;
 int hpfs_compare_names (int ,scalar_t__*,int,unsigned char*,int,int ) ;
 struct hpfs_inode_info* hpfs_i (struct inode*) ;
 int strlen (scalar_t__*) ;
 scalar_t__** text_postfix ;
 scalar_t__** text_prefix ;

void hpfs_decide_conv(struct inode *inode, unsigned char *name, unsigned len)
{
 struct hpfs_inode_info *hpfs_inode = hpfs_i(inode);
 int i;
 if (hpfs_inode->i_conv != CONV_AUTO) return;
 for (i = 0; *text_postfix[i]; i++) {
  int l = strlen(text_postfix[i]);
  if (l <= len)
   if (!hpfs_compare_names(inode->i_sb, text_postfix[i], l, name + len - l, l, 0))
    goto text;
 }
 for (i = 0; *text_prefix[i]; i++) {
  int l = strlen(text_prefix[i]);
  if (l <= len)
   if (!hpfs_compare_names(inode->i_sb, text_prefix[i], l, name, l, 0))
    goto text;
 }
 hpfs_inode->i_conv = CONV_BINARY;
 return;
 text:
 hpfs_inode->i_conv = CONV_TEXT;
 return;
}
