
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;


 char* getlogin () ;
 struct passwd* getpwnam (char const*) ;

__attribute__((used)) static struct passwd *
getpwlogin(void)
{
 const char *login;

 login = getlogin();
 if (login == ((void*)0))
  return (((void*)0));

 return (getpwnam(login));
}
