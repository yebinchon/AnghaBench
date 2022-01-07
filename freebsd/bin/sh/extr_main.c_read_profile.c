
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTOFF ;
 int INTON ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 int cmdloop (int ) ;
 char* expandstr (char const*) ;
 int open (char const*,int) ;
 int popfile () ;
 int setinputfd (int,int) ;

__attribute__((used)) static void
read_profile(const char *name)
{
 int fd;
 const char *expandedname;

 expandedname = expandstr(name);
 if (expandedname == ((void*)0))
  return;
 INTOFF;
 if ((fd = open(expandedname, O_RDONLY | O_CLOEXEC)) >= 0)
  setinputfd(fd, 1);
 INTON;
 if (fd < 0)
  return;
 cmdloop(0);
 popfile();
}
