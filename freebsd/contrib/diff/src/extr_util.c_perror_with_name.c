
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int error (int ,int ,char*,char const*) ;

void
perror_with_name (char const *name)
{
  error (0, errno, "%s", name);
}
