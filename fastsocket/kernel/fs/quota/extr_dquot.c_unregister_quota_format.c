
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quota_format_type {struct quota_format_type* qf_next; } ;


 int dq_list_lock ;
 struct quota_format_type* quota_formats ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void unregister_quota_format(struct quota_format_type *fmt)
{
 struct quota_format_type **actqf;

 spin_lock(&dq_list_lock);
 for (actqf = &quota_formats; *actqf && *actqf != fmt;
      actqf = &(*actqf)->qf_next)
  ;
 if (*actqf)
  *actqf = (*actqf)->qf_next;
 spin_unlock(&dq_list_lock);
}
