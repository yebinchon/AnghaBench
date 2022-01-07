
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int text; struct nodelist* backquote; } ;
union node {TYPE_1__ narg; } ;
struct worddest {scalar_t__ state; struct arglist* list; } ;
struct nodelist {int dummy; } ;
struct arglist {int dummy; } ;


 int EXP_GLOB ;
 int EXP_SPLIT ;
 int STACKSTRNUL (scalar_t__) ;
 int STARTSTACKSTR (scalar_t__) ;
 int STPUTC (char,scalar_t__) ;
 scalar_t__ WORD_IDLE ;
 scalar_t__ WORD_QUOTEMARK ;
 int appendarglist (struct arglist*,int ) ;
 int argstr (int ,struct nodelist**,int,struct worddest*) ;
 int expandmeta (int ,struct arglist*) ;
 scalar_t__ expdest ;
 scalar_t__ fflag ;
 int grabstackstr (scalar_t__) ;
 scalar_t__ stackblock () ;

void
expandarg(union node *arg, struct arglist *arglist, int flag)
{
 struct worddest exparg;
 struct nodelist *argbackq;

 if (fflag)
  flag &= ~EXP_GLOB;
 argbackq = arg->narg.backquote;
 exparg.list = arglist;
 exparg.state = WORD_IDLE;
 STARTSTACKSTR(expdest);
 argstr(arg->narg.text, &argbackq, flag, &exparg);
 if (arglist == ((void*)0)) {
  STACKSTRNUL(expdest);
  return;
 }
 if ((flag & EXP_SPLIT) == 0 || expdest != stackblock() ||
     exparg.state == WORD_QUOTEMARK) {
  STPUTC('\0', expdest);
  if (flag & EXP_SPLIT) {
   if (flag & EXP_GLOB)
    expandmeta(grabstackstr(expdest), exparg.list);
   else
    appendarglist(exparg.list, grabstackstr(expdest));
  }
 }
 if ((flag & EXP_SPLIT) == 0)
  appendarglist(arglist, grabstackstr(expdest));
}
