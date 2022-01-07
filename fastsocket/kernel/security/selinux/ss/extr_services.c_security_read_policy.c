
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policy_file {unsigned long len; void* data; } ;
typedef unsigned long ssize_t ;


 int EINVAL ;
 int ENOMEM ;
 int policy_rwlock ;
 int policydb ;
 int policydb_write (int *,struct policy_file*) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 unsigned long security_policydb_len () ;
 int ss_initialized ;
 void* vmalloc_user (unsigned long) ;

int security_read_policy(void **data, ssize_t *len)
{
 int rc;
 struct policy_file fp;

 if (!ss_initialized)
  return -EINVAL;

 *len = security_policydb_len();

 *data = vmalloc_user(*len);
 if (!*data)
  return -ENOMEM;

 fp.data = *data;
 fp.len = *len;

 read_lock(&policy_rwlock);
 rc = policydb_write(&policydb, &fp);
 read_unlock(&policy_rwlock);

 if (rc)
  return rc;

 *len = (unsigned long)fp.data - (unsigned long)*data;
 return 0;

}
