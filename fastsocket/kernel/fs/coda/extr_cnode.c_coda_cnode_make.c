
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct coda_vattr {int dummy; } ;
struct CodaFid {int dummy; } ;


 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 struct inode* coda_iget (struct super_block*,struct CodaFid*,struct coda_vattr*) ;
 int printk (char*) ;
 int venus_getattr (struct super_block*,struct CodaFid*,struct coda_vattr*) ;

int coda_cnode_make(struct inode **inode, struct CodaFid *fid, struct super_block *sb)
{
        struct coda_vattr attr;
        int error;


 error = venus_getattr(sb, fid, &attr);
 if ( error ) {
     *inode = ((void*)0);
     return error;
 }

 *inode = coda_iget(sb, fid, &attr);
 if ( IS_ERR(*inode) ) {
  printk("coda_cnode_make: coda_iget failed\n");
                return PTR_ERR(*inode);
        }
 return 0;
}
