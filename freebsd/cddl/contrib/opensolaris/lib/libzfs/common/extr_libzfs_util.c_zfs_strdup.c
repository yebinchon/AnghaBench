
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libzfs_handle_t ;


 int no_memory (int *) ;
 char* strdup (char const*) ;

char *
zfs_strdup(libzfs_handle_t *hdl, const char *str)
{
 char *ret;

 if ((ret = strdup(str)) == ((void*)0))
  (void) no_memory(hdl);

 return (ret);
}
