
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_dec (int *) ;
 int bufAllocCount ;
 int cifs_req_poolp ;
 int mempool_free (void*,int ) ;

void
cifs_buf_release(void *buf_to_free)
{
 if (buf_to_free == ((void*)0)) {

  return;
 }
 mempool_free(buf_to_free, cifs_req_poolp);

 atomic_dec(&bufAllocCount);
 return;
}
