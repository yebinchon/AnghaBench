
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
typedef int ssize_t ;


 int EINVAL ;
 int ERANGE ;
 unsigned long simple_strtoul (char*,char**,int ) ;

__attribute__((used)) static ssize_t o2nm_cluster_attr_write(const char *page, ssize_t count,
                                       unsigned int *val)
{
 unsigned long tmp;
 char *p = (char *)page;

 tmp = simple_strtoul(p, &p, 0);
 if (!p || (*p && (*p != '\n')))
  return -EINVAL;

 if (tmp == 0)
  return -EINVAL;
 if (tmp >= (u32)-1)
  return -ERANGE;

 *val = tmp;

 return count;
}
