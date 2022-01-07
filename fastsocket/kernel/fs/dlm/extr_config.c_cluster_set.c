
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_cluster {int dummy; } ;
typedef size_t ssize_t ;


 int CAP_SYS_ADMIN ;
 size_t EACCES ;
 size_t EINVAL ;
 int capable (int ) ;
 unsigned int simple_strtoul (char const*,int *,int ) ;

__attribute__((used)) static ssize_t cluster_set(struct dlm_cluster *cl, unsigned int *cl_field,
      int *info_field, int check_zero,
      const char *buf, size_t len)
{
 unsigned int x;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 x = simple_strtoul(buf, ((void*)0), 0);

 if (check_zero && !x)
  return -EINVAL;

 *cl_field = x;
 *info_field = x;

 return len;
}
