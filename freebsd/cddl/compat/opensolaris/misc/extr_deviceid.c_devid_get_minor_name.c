
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 char* strdup (char*) ;

int
devid_get_minor_name(int fd, char **retminor_name)
{

 *retminor_name = strdup("");
 if (*retminor_name == ((void*)0))
  return (ENOMEM);
 return (0);
}
