
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct cred {char* security; } ;
struct TYPE_2__ {char* smk_known; } ;


 int CAP_MAC_ADMIN ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 size_t SMK_LABELLEN ;
 int capable (int ) ;
 int commit_creds (struct cred*) ;
 struct task_struct* current ;
 struct cred* prepare_creds () ;
 TYPE_1__ smack_known_web ;
 char* smk_import (void*,size_t) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int smack_setprocattr(struct task_struct *p, char *name,
        void *value, size_t size)
{
 struct cred *new;
 char *newsmack;





 if (p != current)
  return -EPERM;

 if (!capable(CAP_MAC_ADMIN))
  return -EPERM;

 if (value == ((void*)0) || size == 0 || size >= SMK_LABELLEN)
  return -EINVAL;

 if (strcmp(name, "current") != 0)
  return -EINVAL;

 newsmack = smk_import(value, size);
 if (newsmack == ((void*)0))
  return -EINVAL;




 if (newsmack == smack_known_web.smk_known)
  return -EPERM;

 new = prepare_creds();
 if (new == ((void*)0))
  return -ENOMEM;
 new->security = newsmack;
 commit_creds(new);
 return size;
}
