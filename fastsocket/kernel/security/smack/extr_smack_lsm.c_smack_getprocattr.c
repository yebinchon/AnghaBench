
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 char* kstrdup (int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 int task_security (struct task_struct*) ;

__attribute__((used)) static int smack_getprocattr(struct task_struct *p, char *name, char **value)
{
 char *cp;
 int slen;

 if (strcmp(name, "current") != 0)
  return -EINVAL;

 cp = kstrdup(task_security(p), GFP_KERNEL);
 if (cp == ((void*)0))
  return -ENOMEM;

 slen = strlen(cp);
 *value = cp;
 return slen;
}
