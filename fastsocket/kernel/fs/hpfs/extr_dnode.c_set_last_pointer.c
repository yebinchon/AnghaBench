
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct hpfs_dirent {int down; int length; } ;
struct dnode {int first_free; int self; } ;
typedef scalar_t__ dnode_secno ;
struct TYPE_2__ {scalar_t__ sb_chk; } ;


 int de_down_pointer (struct hpfs_dirent*) ;
 struct hpfs_dirent* dnode_last_de (struct dnode*) ;
 int hpfs_error (struct super_block*,char*,int ,...) ;
 TYPE_1__* hpfs_sb (struct super_block*) ;

__attribute__((used)) static void set_last_pointer(struct super_block *s, struct dnode *d, dnode_secno ptr)
{
 struct hpfs_dirent *de;
 if (!(de = dnode_last_de(d))) {
  hpfs_error(s, "set_last_pointer: empty dnode %08x", d->self);
  return;
 }
 if (hpfs_sb(s)->sb_chk) {
  if (de->down) {
   hpfs_error(s, "set_last_pointer: dnode %08x has already last pointer %08x",
    d->self, de_down_pointer(de));
   return;
  }
  if (de->length != 32) {
   hpfs_error(s, "set_last_pointer: bad last dirent in dnode %08x", d->self);
   return;
  }
 }
 if (ptr) {
  if ((d->first_free += 4) > 2048) {
   hpfs_error(s,"set_last_pointer: too long dnode %08x", d->self);
   d->first_free -= 4;
   return;
  }
  de->length = 36;
  de->down = 1;
  *(dnode_secno *)((char *)de + 32) = ptr;
 }
}
