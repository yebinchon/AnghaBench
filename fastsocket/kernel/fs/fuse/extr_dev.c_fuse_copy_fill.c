
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fuse_copy_state {unsigned long addr; int req; int fc; scalar_t__ len; scalar_t__ seglen; scalar_t__ mapaddr; scalar_t__ buf; int pg; int write; int nr_segs; TYPE_1__* iov; } ;
struct TYPE_2__ {scalar_t__ iov_base; scalar_t__ iov_len; } ;


 int BUG_ON (int) ;
 int KM_USER0 ;
 unsigned long PAGE_SIZE ;
 int fuse_copy_finish (struct fuse_copy_state*) ;
 int get_user_pages_fast (unsigned long,int,int ,int *) ;
 scalar_t__ kmap_atomic (int ,int ) ;
 int lock_request (int ,int ) ;
 scalar_t__ min (unsigned long,scalar_t__) ;
 int unlock_request (int ,int ) ;

__attribute__((used)) static int fuse_copy_fill(struct fuse_copy_state *cs)
{
 unsigned long offset;
 int err;

 unlock_request(cs->fc, cs->req);
 fuse_copy_finish(cs);
 if (!cs->seglen) {
  BUG_ON(!cs->nr_segs);
  cs->seglen = cs->iov[0].iov_len;
  cs->addr = (unsigned long) cs->iov[0].iov_base;
  cs->iov++;
  cs->nr_segs--;
 }
 err = get_user_pages_fast(cs->addr, 1, cs->write, &cs->pg);
 if (err < 0)
  return err;
 BUG_ON(err != 1);
 offset = cs->addr % PAGE_SIZE;
 cs->mapaddr = kmap_atomic(cs->pg, KM_USER0);
 cs->buf = cs->mapaddr + offset;
 cs->len = min(PAGE_SIZE - offset, cs->seglen);
 cs->seglen -= cs->len;
 cs->addr += cs->len;

 return lock_request(cs->fc, cs->req);
}
