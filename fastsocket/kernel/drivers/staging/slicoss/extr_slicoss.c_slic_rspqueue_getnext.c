
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct slic_rspqueue {int offset; int* paddr; size_t pageindex; int num_pages; struct slic_rspbuf* rspbuf; scalar_t__* vaddr; } ;
struct slic_rspbuf {int status; int hosthandle; } ;
struct adapter {TYPE_1__* slic_regs; struct slic_rspqueue rspqueue; } ;
struct TYPE_2__ {int slic_addr_upper; int slic_rbar64; } ;


 int ASSERT (int) ;
 int DONT_FLUSH ;
 int SLIC_RSPQ_BUFSINPAGE ;
 int slic_reg64_write (struct adapter*,int *,int,int *,int ,int ) ;

__attribute__((used)) static struct slic_rspbuf *slic_rspqueue_getnext(struct adapter *adapter)
{
 struct slic_rspqueue *rspq = &adapter->rspqueue;
 struct slic_rspbuf *buf;

 if (!(rspq->rspbuf->status))
  return ((void*)0);

 buf = rspq->rspbuf;

 ASSERT((buf->status & 0xFFFFFFE0) == 0);

 ASSERT(buf->hosthandle);
 if (++rspq->offset < SLIC_RSPQ_BUFSINPAGE) {
  rspq->rspbuf++;

  ASSERT(((u32) rspq->rspbuf & 0xFFFFFFE0) ==
         (u32) rspq->rspbuf);

 } else {
  ASSERT(rspq->offset == SLIC_RSPQ_BUFSINPAGE);
  slic_reg64_write(adapter, &adapter->slic_regs->slic_rbar64,
   (rspq->paddr[rspq->pageindex] | SLIC_RSPQ_BUFSINPAGE),
   &adapter->slic_regs->slic_addr_upper, 0, DONT_FLUSH);
  rspq->pageindex = (++rspq->pageindex) % rspq->num_pages;
  rspq->offset = 0;
  rspq->rspbuf = (struct slic_rspbuf *)
      rspq->vaddr[rspq->pageindex];

  ASSERT(((u32) rspq->rspbuf & 0xFFFFF000) ==
         (u32) rspq->rspbuf);

 }

 ASSERT(((u32) buf & 0xFFFFFFE0) == (u32) buf);

 return buf;
}
