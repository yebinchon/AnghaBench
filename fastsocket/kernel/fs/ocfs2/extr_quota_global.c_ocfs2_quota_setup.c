
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int create_workqueue (char*) ;
 int ocfs2_quota_wq ;

int ocfs2_quota_setup(void)
{
 ocfs2_quota_wq = create_workqueue("o2quot");
 if (!ocfs2_quota_wq)
  return -ENOMEM;
 return 0;
}
