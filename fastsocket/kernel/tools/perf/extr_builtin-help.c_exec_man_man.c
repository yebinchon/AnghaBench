
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int execlp (char const*,char*,char const*,int *) ;
 int strerror (int ) ;
 int warning (char*,char const*,int ) ;

__attribute__((used)) static void exec_man_man(const char *path, const char *page)
{
 if (!path)
  path = "man";
 execlp(path, "man", page, ((void*)0));
 warning("failed to exec '%s': %s", path, strerror(errno));
}
