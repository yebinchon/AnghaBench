
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {scalar_t__ fl_start; scalar_t__ fl_end; } ;
struct nlm_lock {int svid; int oh; int fh; int caller; struct file_lock fl; } ;
typedef scalar_t__ __s64 ;
typedef int __be32 ;


 scalar_t__ NLM4_OFFSET_MAX ;
 scalar_t__ OFFSET_MAX ;
 int htonl (int ) ;
 scalar_t__ loff_t_to_s64 (scalar_t__) ;
 int * nlm4_encode_fh (int *,int *) ;
 int * nlm4_encode_oh (int *,int *) ;
 int * xdr_encode_hyper (int *,scalar_t__) ;
 int * xdr_encode_string (int *,int ) ;

__attribute__((used)) static __be32 *
nlm4_encode_lock(__be32 *p, struct nlm_lock *lock)
{
 struct file_lock *fl = &lock->fl;
 __s64 start, len;

 if (!(p = xdr_encode_string(p, lock->caller))
  || !(p = nlm4_encode_fh(p, &lock->fh))
  || !(p = nlm4_encode_oh(p, &lock->oh)))
  return ((void*)0);

 if (fl->fl_start > NLM4_OFFSET_MAX
  || (fl->fl_end > NLM4_OFFSET_MAX && fl->fl_end != OFFSET_MAX))
  return ((void*)0);

 *p++ = htonl(lock->svid);

 start = loff_t_to_s64(fl->fl_start);
 if (fl->fl_end == OFFSET_MAX)
  len = 0;
 else
  len = loff_t_to_s64(fl->fl_end - fl->fl_start + 1);

 p = xdr_encode_hyper(p, start);
 p = xdr_encode_hyper(p, len);

 return p;
}
