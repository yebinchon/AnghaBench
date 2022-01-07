
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int stat_lock; int tcon_list; int openFileList; int tc_count; int tidStatus; } ;


 int CifsNew ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_inc (int *) ;
 struct cifs_tcon* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int tconInfoAllocCount ;

struct cifs_tcon *
tconInfoAlloc(void)
{
 struct cifs_tcon *ret_buf;
 ret_buf = kzalloc(sizeof(struct cifs_tcon), GFP_KERNEL);
 if (ret_buf) {
  atomic_inc(&tconInfoAllocCount);
  ret_buf->tidStatus = CifsNew;
  ++ret_buf->tc_count;
  INIT_LIST_HEAD(&ret_buf->openFileList);
  INIT_LIST_HEAD(&ret_buf->tcon_list);



 }
 return ret_buf;
}
