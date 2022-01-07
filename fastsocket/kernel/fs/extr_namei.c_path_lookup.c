
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;


 int AT_FDCWD ;
 int do_path_lookup (int ,char const*,unsigned int,struct nameidata*) ;

int path_lookup(const char *name, unsigned int flags,
   struct nameidata *nd)
{
 return do_path_lookup(AT_FDCWD, name, flags, nd);
}
