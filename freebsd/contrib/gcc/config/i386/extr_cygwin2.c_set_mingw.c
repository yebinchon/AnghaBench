
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_mingw () ;
 char* getenv (char*) ;

__attribute__((used)) static void
set_mingw (void)
{
  char *env = getenv ("GCC_CYGWIN_MINGW");
  if (env && *env == '1')
    add_mingw ();
}
