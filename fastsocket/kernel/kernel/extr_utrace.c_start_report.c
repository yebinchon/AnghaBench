
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utrace {int resume; int lock; scalar_t__ pending_attach; } ;
typedef enum utrace_resume_action { ____Placeholder_utrace_resume_action } utrace_resume_action ;


 int UTRACE_INTERRUPT ;
 int UTRACE_RESUME ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int splice_attaching (struct utrace*) ;

__attribute__((used)) static enum utrace_resume_action start_report(struct utrace *utrace)
{
 enum utrace_resume_action resume = utrace->resume;
 if (utrace->pending_attach ||
     (resume > UTRACE_INTERRUPT && resume < UTRACE_RESUME)) {
  spin_lock(&utrace->lock);
  splice_attaching(utrace);
  resume = utrace->resume;
  if (resume > UTRACE_INTERRUPT)
   utrace->resume = UTRACE_RESUME;
  spin_unlock(&utrace->lock);
 }
 return resume;
}
