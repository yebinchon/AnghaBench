
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int __write_ports_addfd (char*) ;
 int __write_ports_addxprt (char*) ;
 int __write_ports_delfd (char*) ;
 int __write_ports_delxprt (char*) ;
 int __write_ports_names (char*) ;
 scalar_t__ isalpha (char) ;
 scalar_t__ isdigit (char) ;

__attribute__((used)) static ssize_t __write_ports(struct file *file, char *buf, size_t size)
{
 if (size == 0)
  return __write_ports_names(buf);

 if (isdigit(buf[0]))
  return __write_ports_addfd(buf);

 if (buf[0] == '-' && isdigit(buf[1]))
  return __write_ports_delfd(buf);

 if (isalpha(buf[0]))
  return __write_ports_addxprt(buf);

 if (buf[0] == '-' && isalpha(buf[1]))
  return __write_ports_delxprt(buf);

 return -EINVAL;
}
