
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log {int l_logsize; } ;
typedef scalar_t__ int64_t ;
typedef int atomic64_t ;


 scalar_t__ atomic64_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ atomic64_read (int *) ;
 scalar_t__ xlog_assign_grant_head_val (int,int) ;
 int xlog_crack_grant_head_val (scalar_t__,int*,int*) ;

__attribute__((used)) static void
xlog_grant_add_space(
 struct log *log,
 atomic64_t *head,
 int bytes)
{
 int64_t head_val = atomic64_read(head);
 int64_t new, old;

 do {
  int tmp;
  int cycle, space;

  xlog_crack_grant_head_val(head_val, &cycle, &space);

  tmp = log->l_logsize - space;
  if (tmp > bytes)
   space += bytes;
  else {
   space = bytes - tmp;
   cycle++;
  }

  old = head_val;
  new = xlog_assign_grant_head_val(cycle, space);
  head_val = atomic64_cmpxchg(head, old, new);
 } while (head_val != old);
}
