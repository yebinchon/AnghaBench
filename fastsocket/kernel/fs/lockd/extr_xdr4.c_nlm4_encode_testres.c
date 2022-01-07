
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_lock {scalar_t__ fl_type; scalar_t__ fl_start; scalar_t__ fl_end; } ;
struct TYPE_2__ {scalar_t__ svid; int oh; struct file_lock fl; } ;
struct nlm_res {TYPE_1__ lock; int status; int cookie; } ;
typedef int s64 ;
typedef int __be32 ;


 scalar_t__ F_RDLCK ;
 scalar_t__ OFFSET_MAX ;
 int dprintk (char*,int *,...) ;
 int htonl (scalar_t__) ;
 int loff_t_to_s64 (scalar_t__) ;
 int * nlm4_encode_cookie (int *,int *) ;
 int nlm_lck_denied ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_encode_netobj (int *,int *) ;
 int xdr_one ;
 int xdr_zero ;

__attribute__((used)) static __be32 *
nlm4_encode_testres(__be32 *p, struct nlm_res *resp)
{
 s64 start, len;

 dprintk("xdr: before encode_testres (p %p resp %p)\n", p, resp);
 if (!(p = nlm4_encode_cookie(p, &resp->cookie)))
  return ((void*)0);
 *p++ = resp->status;

 if (resp->status == nlm_lck_denied) {
  struct file_lock *fl = &resp->lock.fl;

  *p++ = (fl->fl_type == F_RDLCK)? xdr_zero : xdr_one;
  *p++ = htonl(resp->lock.svid);


  if (!(p = xdr_encode_netobj(p, &resp->lock.oh)))
   return ((void*)0);

  start = loff_t_to_s64(fl->fl_start);
  if (fl->fl_end == OFFSET_MAX)
   len = 0;
  else
   len = loff_t_to_s64(fl->fl_end - fl->fl_start + 1);

  p = xdr_encode_hyper(p, start);
  p = xdr_encode_hyper(p, len);
  dprintk("xdr: encode_testres (status %u pid %d type %d start %Ld end %Ld)\n",
   resp->status, (int)resp->lock.svid, fl->fl_type,
   (long long)fl->fl_start, (long long)fl->fl_end);
 }

 dprintk("xdr: after encode_testres (p %p resp %p)\n", p, resp);
 return p;
}
