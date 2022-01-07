
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;
struct nameidata {struct path path; } ;


 int AT_FDCWD ;
 int do_path_lookup (int ,char const*,unsigned int,struct nameidata*) ;

int kern_path(const char *name, unsigned int flags, struct path *path)
{
 struct nameidata nd;
 int res = do_path_lookup(AT_FDCWD, name, flags, &nd);
 if (!res)
  *path = nd.path;
 return res;
}
