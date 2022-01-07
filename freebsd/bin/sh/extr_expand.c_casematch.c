
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int text; struct nodelist* backquote; } ;
union node {TYPE_1__ narg; } ;
struct stackmark {int dummy; } ;
struct nodelist {int dummy; } ;


 int EXP_CASE ;
 int EXP_TILDE ;
 int STARTSTACKSTR (int ) ;
 int STPUTC (char,int ) ;
 int argstr (int ,struct nodelist**,int,int *) ;
 int expdest ;
 char* grabstackstr (int ) ;
 int patmatch (char*,char const*) ;
 int popstackmark (struct stackmark*) ;
 int setstackmark (struct stackmark*) ;

int
casematch(union node *pattern, const char *val)
{
 struct stackmark smark;
 struct nodelist *argbackq;
 int result;
 char *p;

 setstackmark(&smark);
 argbackq = pattern->narg.backquote;
 STARTSTACKSTR(expdest);
 argstr(pattern->narg.text, &argbackq, EXP_TILDE | EXP_CASE, ((void*)0));
 STPUTC('\0', expdest);
 p = grabstackstr(expdest);
 result = patmatch(p, val);
 popstackmark(&smark);
 return result;
}
