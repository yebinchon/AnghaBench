
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {scalar_t__ fl_start; scalar_t__ fl_end; } ;
struct nlm_lock {scalar_t__ svid; int oh; int fh; int caller; struct file_lock fl; } ;
typedef scalar_t__ __s32 ;
typedef int __be32 ;


 scalar_t__ NLM_OFFSET_MAX ;
 scalar_t__ OFFSET_MAX ;
 void* htonl (scalar_t__) ;
 scalar_t__ loff_t_to_s32 (scalar_t__) ;
 int * nlm_encode_fh (int *,int *) ;
 int * nlm_encode_oh (int *,int *) ;
 int * xdr_encode_string (int *,int ) ;

__attribute__((used)) static __be32 *
nlm_encode_lock(__be32 *p, struct nlm_lock *lock)
{
 struct file_lock *fl = &lock->fl;
 __s32 start, len;

 if (!(p = xdr_encode_string(p, lock->caller))
  || !(p = nlm_encode_fh(p, &lock->fh))
  || !(p = nlm_encode_oh(p, &lock->oh)))
  return ((void*)0);

 if (fl->fl_start > NLM_OFFSET_MAX
  || (fl->fl_end > NLM_OFFSET_MAX && fl->fl_end != OFFSET_MAX))
  return ((void*)0);

 start = loff_t_to_s32(fl->fl_start);
 if (fl->fl_end == OFFSET_MAX)
  len = 0;
 else
  len = loff_t_to_s32(fl->fl_end - fl->fl_start + 1);

 *p++ = htonl(lock->svid);
 *p++ = htonl(start);
 *p++ = htonl(len);

 return p;
}
