
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct magic_set {int dummy; } ;


 char const* file_or_fd (struct magic_set*,int *,int) ;

const char *
magic_descriptor(struct magic_set *ms, int fd)
{
 if (ms == ((void*)0))
  return ((void*)0);
 return file_or_fd(ms, ((void*)0), fd);
}
