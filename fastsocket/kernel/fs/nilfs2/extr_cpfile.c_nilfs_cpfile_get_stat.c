
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_cpstat {void* cs_nsss; void* cs_ncps; int cs_cno; } ;
struct nilfs_cpfile_header {int ch_nsnapshots; int ch_ncheckpoints; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_page; } ;
struct TYPE_2__ {int mi_sem; } ;


 int KM_USER0 ;
 TYPE_1__* NILFS_MDT (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int down_read (int *) ;
 void* kmap_atomic (int ,int ) ;
 int kunmap_atomic (void*,int ) ;
 void* le64_to_cpu (int ) ;
 struct nilfs_cpfile_header* nilfs_cpfile_block_get_header (struct inode*,struct buffer_head*,void*) ;
 int nilfs_cpfile_get_header_block (struct inode*,struct buffer_head**) ;
 int nilfs_mdt_cno (struct inode*) ;
 int up_read (int *) ;

int nilfs_cpfile_get_stat(struct inode *cpfile, struct nilfs_cpstat *cpstat)
{
 struct buffer_head *bh;
 struct nilfs_cpfile_header *header;
 void *kaddr;
 int ret;

 down_read(&NILFS_MDT(cpfile)->mi_sem);

 ret = nilfs_cpfile_get_header_block(cpfile, &bh);
 if (ret < 0)
  goto out_sem;
 kaddr = kmap_atomic(bh->b_page, KM_USER0);
 header = nilfs_cpfile_block_get_header(cpfile, bh, kaddr);
 cpstat->cs_cno = nilfs_mdt_cno(cpfile);
 cpstat->cs_ncps = le64_to_cpu(header->ch_ncheckpoints);
 cpstat->cs_nsss = le64_to_cpu(header->ch_nsnapshots);
 kunmap_atomic(kaddr, KM_USER0);
 brelse(bh);

 out_sem:
 up_read(&NILFS_MDT(cpfile)->mi_sem);
 return ret;
}
