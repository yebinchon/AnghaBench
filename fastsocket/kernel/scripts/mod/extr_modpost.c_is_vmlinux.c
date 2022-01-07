
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int is_vmlinux(const char *modname)
{
 const char *myname;

 myname = strrchr(modname, '/');
 if (myname)
  myname++;
 else
  myname = modname;

 return (strcmp(myname, "vmlinux") == 0) ||
        (strcmp(myname, "vmlinux.o") == 0);
}
