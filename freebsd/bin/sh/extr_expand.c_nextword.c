
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct worddest {scalar_t__ state; TYPE_1__* list; } ;
struct TYPE_3__ {int count; } ;


 int EXP_GLOB ;
 int STARTSTACKSTR (char*) ;
 int STPUTC (char,char*) ;
 scalar_t__ WORD_IDLE ;
 scalar_t__ WORD_QUOTEMARK ;
 scalar_t__ WORD_WS_DELIMITED ;
 int appendarglist (TYPE_1__*,int *) ;
 int expandmeta (int *,TYPE_1__*) ;
 int * grabstackstr (char*) ;
 char* stackblock () ;

__attribute__((used)) static char *
nextword(char c, int flag, char *p, struct worddest *dst)
{
 int is_ws;

 is_ws = c == '\t' || c == '\n' || c == ' ';
 if (p != stackblock() || (is_ws ? dst->state == WORD_QUOTEMARK :
     dst->state != WORD_WS_DELIMITED) || c == '\0') {
  STPUTC('\0', p);
  if (flag & EXP_GLOB)
   expandmeta(grabstackstr(p), dst->list);
  else
   appendarglist(dst->list, grabstackstr(p));
  dst->state = is_ws ? WORD_WS_DELIMITED : WORD_IDLE;
 } else if (!is_ws && dst->state == WORD_WS_DELIMITED)
  dst->state = WORD_IDLE;

 appendarglist(dst->list, ((void*)0));
 dst->list->count--;
 STARTSTACKSTR(p);
 return p;
}
