
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct cpumask {int dummy; } ;


 int E2BIG ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TASKSTATS_CPUMASK_MAXLEN ;
 int cpulist_parse (char*,struct cpumask*) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int nla_len (struct nlattr*) ;
 int nla_strlcpy (char*,struct nlattr*,int) ;

__attribute__((used)) static int parse(struct nlattr *na, struct cpumask *mask)
{
 char *data;
 int len;
 int ret;

 if (na == ((void*)0))
  return 1;
 len = nla_len(na);
 if (len > TASKSTATS_CPUMASK_MAXLEN)
  return -E2BIG;
 if (len < 1)
  return -EINVAL;
 data = kmalloc(len, GFP_KERNEL);
 if (!data)
  return -ENOMEM;
 nla_strlcpy(data, na, len);
 ret = cpulist_parse(data, mask);
 kfree(data);
 return ret;
}
