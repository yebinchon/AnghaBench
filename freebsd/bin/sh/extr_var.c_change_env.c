
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INTOFF ;
 int INTON ;
 int ckfree (char*) ;
 char* savestr (char const*) ;
 int setenv (char*,char*,int) ;
 char* strchr (char*,char) ;
 int unsetenv (char*) ;

__attribute__((used)) static void
change_env(const char *s, int set)
{
 char *eqp;
 char *ss;

 INTOFF;
 ss = savestr(s);
 if ((eqp = strchr(ss, '=')) != ((void*)0))
  *eqp = '\0';
 if (set && eqp != ((void*)0))
  (void) setenv(ss, eqp + 1, 1);
 else
  (void) unsetenv(ss);
 ckfree(ss);
 INTON;

 return;
}
