
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int cygwin_conv_to_posix_path (char*,char*) ;
 char* default_nto_target ;
 char* getenv (char*) ;

__attribute__((used)) static char *
nto_target (void)
{
  char *p = getenv ("QNX_TARGET");
  return p ? p : default_nto_target;

}
