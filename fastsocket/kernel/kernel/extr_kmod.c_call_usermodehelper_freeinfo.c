
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subprocess_info {scalar_t__ cred; int (* cleanup ) (struct subprocess_info*) ;} ;


 int kfree (struct subprocess_info*) ;
 int put_cred (scalar_t__) ;
 int stub1 (struct subprocess_info*) ;

void call_usermodehelper_freeinfo(struct subprocess_info *info)
{
 if (info->cleanup)
  (*info->cleanup)(info);
 if (info->cred)
  put_cred(info->cred);
 kfree(info);
}
