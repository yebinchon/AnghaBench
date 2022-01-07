
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUTOFS_IOC_SETTIMEOUT ;
 int rw_long (unsigned int,int ,unsigned long) ;

__attribute__((used)) static int ioc_settimeout(unsigned int fd, unsigned int cmd, unsigned long arg)
{
 return rw_long(fd, AUTOFS_IOC_SETTIMEOUT, arg);
}
