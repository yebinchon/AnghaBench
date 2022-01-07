
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_name; } ;


 char* getenv (char*) ;
 char* getlogin () ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;
 char* xstrdup (char const*) ;

__attribute__((used)) static char *
find_username(void)
{
  const char *u = getlogin();

  if (!u) {
    struct passwd *pw = getpwuid(getuid());
    if (pw)
      u = pw->pw_name;
  }

  if (!u)
    u = getenv("USER");
  if (!u)
    u = getenv("LOGNAME");
  if (!u)
    u = "root";

  return xstrdup(u);
}
