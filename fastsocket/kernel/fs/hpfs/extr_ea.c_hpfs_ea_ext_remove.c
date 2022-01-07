
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct extended_attribute {int valuelen; int namelen; int anode; scalar_t__ indirect; } ;
struct buffer_head {int dummy; } ;
struct anode {int btree; } ;
typedef int secno ;


 int brelse (struct buffer_head*) ;
 int ea_len (struct extended_attribute*) ;
 int ea_sec (struct extended_attribute*) ;
 scalar_t__ hpfs_ea_read (struct super_block*,int ,int,unsigned int,int,char*) ;
 int hpfs_ea_remove (struct super_block*,int ,int ,int ) ;
 int hpfs_error (struct super_block*,char*,char*,int ,unsigned int) ;
 int hpfs_free_sectors (struct super_block*,int ,int) ;
 struct anode* hpfs_map_anode (struct super_block*,int ,struct buffer_head**) ;
 int hpfs_remove_btree (struct super_block*,int *) ;

void hpfs_ea_ext_remove(struct super_block *s, secno a, int ano, unsigned len)
{
 unsigned pos = 0;
 while (pos < len) {
  char ex[4 + 255 + 1 + 8];
  struct extended_attribute *ea = (struct extended_attribute *)ex;
  if (pos + 4 > len) {
   hpfs_error(s, "EAs don't end correctly, %s %08x, len %08x",
    ano ? "anode" : "sectors", a, len);
   return;
  }
  if (hpfs_ea_read(s, a, ano, pos, 4, ex)) return;
  if (ea->indirect) {
   if (ea->valuelen != 8) {
    hpfs_error(s, "ea->indirect set while ea->valuelen!=8, %s %08x, pos %08x",
     ano ? "anode" : "sectors", a, pos);
    return;
   }
   if (hpfs_ea_read(s, a, ano, pos + 4, ea->namelen + 9, ex+4))
    return;
   hpfs_ea_remove(s, ea_sec(ea), ea->anode, ea_len(ea));
  }
  pos += ea->namelen + ea->valuelen + 5;
 }
 if (!ano) hpfs_free_sectors(s, a, (len+511) >> 9);
 else {
  struct buffer_head *bh;
  struct anode *anode;
  if ((anode = hpfs_map_anode(s, a, &bh))) {
   hpfs_remove_btree(s, &anode->btree);
   brelse(bh);
   hpfs_free_sectors(s, a, 1);
  }
 }
}
