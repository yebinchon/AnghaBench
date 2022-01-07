
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dummy; } ;


 scalar_t__ kern_path (char const*,int ,struct path*) ;
 int path_put (struct path*) ;
 char* tomoyo_realpath_from_path (struct path*) ;

char *tomoyo_realpath_nofollow(const char *pathname)
{
 struct path path;

 if (pathname && kern_path(pathname, 0, &path) == 0) {
  char *buf = tomoyo_realpath_from_path(&path);
  path_put(&path);
  return buf;
 }
 return ((void*)0);
}
