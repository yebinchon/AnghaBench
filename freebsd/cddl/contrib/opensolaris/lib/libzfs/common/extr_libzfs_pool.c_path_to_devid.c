
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ddi_devid_t ;


 int O_RDONLY ;
 int close (int) ;
 int devid_free (int ) ;
 scalar_t__ devid_get (int,int *) ;
 scalar_t__ devid_get_minor_name (int,char**) ;
 char* devid_str_encode (int ,char*) ;
 int devid_str_free (char*) ;
 int open (char const*,int ) ;

__attribute__((used)) static char *
path_to_devid(const char *path)
{
 return (((void*)0));

}
