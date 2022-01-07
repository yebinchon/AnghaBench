
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page_collect {unsigned int expected_pages; int pg_first; scalar_t__ length; scalar_t__ nr_pages; int * bio; struct inode* inode; int req_q; struct exofs_sb_info* sbi; } ;
struct inode {int i_ino; TYPE_1__* i_sb; } ;
struct exofs_sb_info {int s_dev; } ;
struct TYPE_2__ {struct exofs_sb_info* s_fs_info; } ;


 int EXOFS_DBGMSG (char*,int ,unsigned int) ;
 int osd_request_queue (int ) ;

__attribute__((used)) static void _pcol_init(struct page_collect *pcol, unsigned expected_pages,
  struct inode *inode)
{
 struct exofs_sb_info *sbi = inode->i_sb->s_fs_info;

 pcol->sbi = sbi;
 pcol->req_q = osd_request_queue(sbi->s_dev);
 pcol->inode = inode;
 pcol->expected_pages = expected_pages;

 pcol->bio = ((void*)0);
 pcol->nr_pages = 0;
 pcol->length = 0;
 pcol->pg_first = -1;

 EXOFS_DBGMSG("_pcol_init ino=0x%lx expected_pages=%u\n", inode->i_ino,
       expected_pages);
}
