
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_status_t ;


 int file_cleanup (void*,int) ;

apr_status_t apr_unix_child_file_cleanup(void *thefile)
{
    return file_cleanup(thefile, 1);
}
