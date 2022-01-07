
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page_collect {int expected_pages; int pg_first; TYPE_1__* inode; scalar_t__ length; scalar_t__ nr_pages; int * bio; } ;
struct TYPE_2__ {int i_ino; } ;


 int EXOFS_DBGMSG (char*,int ,int) ;
 scalar_t__ min (scalar_t__,int) ;

__attribute__((used)) static void _pcol_reset(struct page_collect *pcol)
{
 pcol->expected_pages -= min(pcol->nr_pages, pcol->expected_pages);

 pcol->bio = ((void*)0);
 pcol->nr_pages = 0;
 pcol->length = 0;
 pcol->pg_first = -1;
 EXOFS_DBGMSG("_pcol_reset ino=0x%lx expected_pages=%u\n",
       pcol->inode->i_ino, pcol->expected_pages);




 if (!pcol->expected_pages)
  pcol->expected_pages = 128;
}
