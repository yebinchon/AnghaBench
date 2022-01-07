
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct rpc_rqst {int dummy; } ;
struct file_lock {void* fl_end; void* fl_start; int fl_type; int fl_flags; scalar_t__ fl_pid; } ;
struct TYPE_2__ {int oh; void* svid; struct file_lock fl; } ;
struct nlm_res {scalar_t__ status; TYPE_1__ lock; int cookie; } ;
typedef scalar_t__ pid_t ;
typedef scalar_t__ __u64 ;
typedef scalar_t__ __s64 ;
typedef int __be32 ;


 int EIO ;
 int FL_POSIX ;
 int F_RDLCK ;
 int F_WRLCK ;
 void* OFFSET_MAX ;
 int locks_init_lock (struct file_lock*) ;
 int memset (TYPE_1__*,int ,int) ;
 int * nlm4_decode_cookie (int *,int *) ;
 int * nlm4_decode_oh (int *,int *) ;
 scalar_t__ nlm_lck_denied ;
 void* ntohl (int ) ;
 void* s64_to_loff_t (scalar_t__) ;
 int * xdr_decode_hyper (int *,scalar_t__*) ;

__attribute__((used)) static int
nlm4clt_decode_testres(struct rpc_rqst *req, __be32 *p, struct nlm_res *resp)
{
 if (!(p = nlm4_decode_cookie(p, &resp->cookie)))
  return -EIO;
 resp->status = *p++;
 if (resp->status == nlm_lck_denied) {
  struct file_lock *fl = &resp->lock.fl;
  u32 excl;
  __u64 start, len;
  __s64 end;

  memset(&resp->lock, 0, sizeof(resp->lock));
  locks_init_lock(fl);
  excl = ntohl(*p++);
  resp->lock.svid = ntohl(*p++);
  fl->fl_pid = (pid_t)resp->lock.svid;
  if (!(p = nlm4_decode_oh(p, &resp->lock.oh)))
   return -EIO;

  fl->fl_flags = FL_POSIX;
  fl->fl_type = excl? F_WRLCK : F_RDLCK;
  p = xdr_decode_hyper(p, &start);
  p = xdr_decode_hyper(p, &len);
  end = start + len - 1;

  fl->fl_start = s64_to_loff_t(start);
  if (len == 0 || end < 0)
   fl->fl_end = OFFSET_MAX;
  else
   fl->fl_end = s64_to_loff_t(end);
 }
 return 0;
}
