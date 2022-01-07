
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rr_fragment {scalar_t__ next; int length; int data; } ;
struct msm_rpc_endpoint {int dummy; } ;


 int __msm_rpc_read (struct msm_rpc_endpoint*,struct rr_fragment**,unsigned int,long) ;
 int kfree (struct rr_fragment*) ;
 int memcpy (char*,int ,int ) ;
 char* rr_malloc (int) ;

int msm_rpc_read(struct msm_rpc_endpoint *ept, void **buffer,
   unsigned user_len, long timeout)
{
 struct rr_fragment *frag, *next;
 char *buf;
 int rc;

 rc = __msm_rpc_read(ept, &frag, user_len, timeout);
 if (rc <= 0)
  return rc;




 if (frag->next == 0) {
  *buffer = (void*) frag;
  return rc;
 }




 buf = rr_malloc(rc);
 *buffer = buf;

 while (frag != ((void*)0)) {
  memcpy(buf, frag->data, frag->length);
  next = frag->next;
  buf += frag->length;
  kfree(frag);
  frag = next;
 }

 return rc;
}
