
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct fnode {int ea_size_l; int ea_anode; int ea_secno; } ;
struct extended_attribute {int valuelen; int namelen; int anode; scalar_t__ indirect; int name; } ;
typedef int secno ;


 int GFP_NOFS ;
 int ea_data (struct extended_attribute*) ;
 int ea_len (struct extended_attribute*) ;
 int ea_sec (struct extended_attribute*) ;
 struct extended_attribute* fnode_ea (struct fnode*) ;
 struct extended_attribute* fnode_end_ea (struct fnode*) ;
 char* get_indirect_ea (struct super_block*,int ,int ,int) ;
 scalar_t__ hpfs_ea_read (struct super_block*,int ,int,unsigned int,int,char*) ;
 int hpfs_error (struct super_block*,char*,char*,int ,int) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int memcpy (char*,int ,int) ;
 struct extended_attribute* next_ea (struct extended_attribute*) ;
 int printk (char*) ;
 int strcmp (int ,char*) ;

char *hpfs_get_ea(struct super_block *s, struct fnode *fnode, char *key, int *size)
{
 char *ret;
 unsigned pos;
 int ano, len;
 secno a;
 struct extended_attribute *ea;
 struct extended_attribute *ea_end = fnode_end_ea(fnode);
 for (ea = fnode_ea(fnode); ea < ea_end; ea = next_ea(ea))
  if (!strcmp(ea->name, key)) {
   if (ea->indirect)
    return get_indirect_ea(s, ea->anode, ea_sec(ea), *size = ea_len(ea));
   if (!(ret = kmalloc((*size = ea->valuelen) + 1, GFP_NOFS))) {
    printk("HPFS: out of memory for EA\n");
    return ((void*)0);
   }
   memcpy(ret, ea_data(ea), ea->valuelen);
   ret[ea->valuelen] = 0;
   return ret;
  }
 a = fnode->ea_secno;
 len = fnode->ea_size_l;
 ano = fnode->ea_anode;
 pos = 0;
 while (pos < len) {
  char ex[4 + 255 + 1 + 8];
  ea = (struct extended_attribute *)ex;
  if (pos + 4 > len) {
   hpfs_error(s, "EAs don't end correctly, %s %08x, len %08x",
    ano ? "anode" : "sectors", a, len);
   return ((void*)0);
  }
  if (hpfs_ea_read(s, a, ano, pos, 4, ex)) return ((void*)0);
  if (hpfs_ea_read(s, a, ano, pos + 4, ea->namelen + 1 + (ea->indirect ? 8 : 0), ex + 4))
   return ((void*)0);
  if (!strcmp(ea->name, key)) {
   if (ea->indirect)
    return get_indirect_ea(s, ea->anode, ea_sec(ea), *size = ea_len(ea));
   if (!(ret = kmalloc((*size = ea->valuelen) + 1, GFP_NOFS))) {
    printk("HPFS: out of memory for EA\n");
    return ((void*)0);
   }
   if (hpfs_ea_read(s, a, ano, pos + 4 + ea->namelen + 1, ea->valuelen, ret)) {
    kfree(ret);
    return ((void*)0);
   }
   ret[ea->valuelen] = 0;
   return ret;
  }
  pos += ea->namelen + ea->valuelen + 5;
 }
 return ((void*)0);
}
