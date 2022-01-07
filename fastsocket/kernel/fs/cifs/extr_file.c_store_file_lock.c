
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifsLockInfo {int llist; int type; void* length; void* offset; } ;
struct cifsFileInfo {int lock_mutex; int llist; } ;
typedef int __u8 ;
typedef void* __u64 ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct cifsLockInfo* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int store_file_lock(struct cifsFileInfo *fid, __u64 len,
    __u64 offset, __u8 lockType)
{
 struct cifsLockInfo *li =
  kmalloc(sizeof(struct cifsLockInfo), GFP_KERNEL);
 if (li == ((void*)0))
  return -ENOMEM;
 li->offset = offset;
 li->length = len;
 li->type = lockType;
 mutex_lock(&fid->lock_mutex);
 list_add(&li->llist, &fid->llist);
 mutex_unlock(&fid->lock_mutex);
 return 0;
}
