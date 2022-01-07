
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policy_load_memory {int data; int len; } ;
struct inode {int i_mutex; } ;
struct file {struct policy_load_memory* private_data; } ;


 int BUG_ON (struct policy_load_memory*) ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SECURITY__READ_POLICY ;
 int current ;
 scalar_t__ i_size_read (struct inode*) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int kfree (struct policy_load_memory*) ;
 struct policy_load_memory* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int policy_opened ;
 scalar_t__ security_policydb_len () ;
 int security_read_policy (int *,int *) ;
 int sel_mutex ;
 int task_has_security (int ,int ) ;
 int vfree (int ) ;

__attribute__((used)) static int sel_open_policy(struct inode *inode, struct file *filp)
{
 struct policy_load_memory *plm = ((void*)0);
 int rc;

 BUG_ON(filp->private_data);

 mutex_lock(&sel_mutex);

 rc = task_has_security(current, SECURITY__READ_POLICY);
 if (rc)
  goto err;

 rc = -EBUSY;
 if (policy_opened)
  goto err;

 rc = -ENOMEM;
 plm = kzalloc(sizeof(*plm), GFP_KERNEL);
 if (!plm)
  goto err;

 if (i_size_read(inode) != security_policydb_len()) {
  mutex_lock(&inode->i_mutex);
  i_size_write(inode, security_policydb_len());
  mutex_unlock(&inode->i_mutex);
 }

 rc = security_read_policy(&plm->data, &plm->len);
 if (rc)
  goto err;

 policy_opened = 1;

 filp->private_data = plm;

 mutex_unlock(&sel_mutex);

 return 0;
err:
 mutex_unlock(&sel_mutex);

 if (plm)
  vfree(plm->data);
 kfree(plm);
 return rc;
}
