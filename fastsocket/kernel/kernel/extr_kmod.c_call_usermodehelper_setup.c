
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subprocess_info {char* path; char** argv; char** envp; int cred; int work; } ;
typedef int gfp_t ;


 int INIT_WORK (int *,int ) ;
 int __call_usermodehelper ;
 int kfree (struct subprocess_info*) ;
 struct subprocess_info* kzalloc (int,int ) ;
 int prepare_usermodehelper_creds () ;

struct subprocess_info *call_usermodehelper_setup(char *path, char **argv,
        char **envp, gfp_t gfp_mask)
{
 struct subprocess_info *sub_info;
 sub_info = kzalloc(sizeof(struct subprocess_info), gfp_mask);
 if (!sub_info)
  goto out;

 INIT_WORK(&sub_info->work, __call_usermodehelper);
 sub_info->path = path;
 sub_info->argv = argv;
 sub_info->envp = envp;
 sub_info->cred = prepare_usermodehelper_creds();
 if (!sub_info->cred) {
  kfree(sub_info);
  return ((void*)0);
 }

  out:
 return sub_info;
}
