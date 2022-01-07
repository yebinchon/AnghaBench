
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct CodaFid {int dummy; } ;
struct TYPE_10__ {struct CodaFid NewFid; struct CodaFid OldFid; } ;
struct TYPE_9__ {struct CodaFid CodaFid; } ;
struct TYPE_8__ {struct CodaFid CodaFid; } ;
struct TYPE_7__ {struct CodaFid CodaFid; } ;
union outputArgs {TYPE_5__ coda_replace; TYPE_4__ coda_purgefid; TYPE_3__ coda_zapfile; TYPE_2__ coda_zapdir; } ;
struct super_block {TYPE_1__* s_root; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {struct inode* d_inode; } ;
 int C_FLUSH ;
 int C_PURGE ;
 int C_VATTR ;
 int coda_cache_clear_all (struct super_block*) ;
 struct inode* coda_fid_to_inode (struct CodaFid*,struct super_block*) ;
 int coda_flag_inode (struct inode*,int ) ;
 int coda_flag_inode_children (struct inode*,int ) ;
 int coda_replace_fid (struct inode*,struct CodaFid*,struct CodaFid*) ;
 int d_prune_aliases (struct inode*) ;
 int iput (struct inode*) ;
 int shrink_dcache_sb (struct super_block*) ;

int coda_downcall(int opcode, union outputArgs * out, struct super_block *sb)
{
 struct inode *inode = ((void*)0);
 struct CodaFid *fid, *newfid;


 if ( !sb || !sb->s_root)
  return 0;

 switch (opcode) {
 case 133:
  coda_cache_clear_all(sb);
  shrink_dcache_sb(sb);
  if (sb->s_root->d_inode)
      coda_flag_inode(sb->s_root->d_inode, C_FLUSH);
  break;

 case 131:
  coda_cache_clear_all(sb);
  break;

 case 129:
  fid = &out->coda_zapdir.CodaFid;
  inode = coda_fid_to_inode(fid, sb);
  if (inode) {
   coda_flag_inode_children(inode, C_PURGE);
   coda_flag_inode(inode, C_VATTR);
  }
  break;

 case 128:
  fid = &out->coda_zapfile.CodaFid;
  inode = coda_fid_to_inode(fid, sb);
  if (inode)
   coda_flag_inode(inode, C_VATTR);
  break;

 case 132:
  fid = &out->coda_purgefid.CodaFid;
  inode = coda_fid_to_inode(fid, sb);
  if (inode) {
   coda_flag_inode_children(inode, C_PURGE);


   coda_flag_inode(inode, C_PURGE);
   d_prune_aliases(inode);

  }
  break;

 case 130:
  fid = &out->coda_replace.OldFid;
  newfid = &out->coda_replace.NewFid;
  inode = coda_fid_to_inode(fid, sb);
  if (inode)
   coda_replace_fid(inode, fid, newfid);
  break;
 }

 if (inode)
  iput(inode);

 return 0;
}
