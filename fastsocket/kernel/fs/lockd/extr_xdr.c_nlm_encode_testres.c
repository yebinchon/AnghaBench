
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_lock {scalar_t__ fl_type; scalar_t__ fl_start; scalar_t__ fl_end; } ;
struct TYPE_2__ {int oh; int svid; struct file_lock fl; } ;
struct nlm_res {scalar_t__ status; TYPE_1__ lock; int cookie; } ;
typedef int s32 ;
typedef int __be32 ;


 scalar_t__ F_RDLCK ;
 scalar_t__ OFFSET_MAX ;
 void* htonl (int ) ;
 int loff_t_to_s32 (scalar_t__) ;
 int * nlm_encode_cookie (int *,int *) ;
 scalar_t__ nlm_lck_denied ;
 int * xdr_encode_netobj (int *,int *) ;
 int xdr_one ;
 int xdr_zero ;

__attribute__((used)) static __be32 *
nlm_encode_testres(__be32 *p, struct nlm_res *resp)
{
 s32 start, len;

 if (!(p = nlm_encode_cookie(p, &resp->cookie)))
  return ((void*)0);
 *p++ = resp->status;

 if (resp->status == nlm_lck_denied) {
  struct file_lock *fl = &resp->lock.fl;

  *p++ = (fl->fl_type == F_RDLCK)? xdr_zero : xdr_one;
  *p++ = htonl(resp->lock.svid);


  if (!(p = xdr_encode_netobj(p, &resp->lock.oh)))
   return ((void*)0);

  start = loff_t_to_s32(fl->fl_start);
  if (fl->fl_end == OFFSET_MAX)
   len = 0;
  else
   len = loff_t_to_s32(fl->fl_end - fl->fl_start + 1);

  *p++ = htonl(start);
  *p++ = htonl(len);
 }

 return p;
}
