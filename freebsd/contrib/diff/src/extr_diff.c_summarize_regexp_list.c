
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regexp_list {char* regexps; TYPE_1__* buf; int len; scalar_t__ multiple_regexps; } ;
struct TYPE_2__ {int fastmap; } ;


 int CHAR_BIT ;
 int EXIT_TROUBLE ;
 int error (int ,int ,char*,char*,char const*) ;
 char* re_compile_pattern (char*,int ,TYPE_1__*) ;
 int xmalloc (int) ;

__attribute__((used)) static void
summarize_regexp_list (struct regexp_list *reglist)
{
  if (reglist->regexps)
    {

      reglist->buf->fastmap = xmalloc (1 << CHAR_BIT);
      if (reglist->multiple_regexps)
 {


   char const *m = re_compile_pattern (reglist->regexps, reglist->len,
           reglist->buf);
   if (m != 0)
     error (EXIT_TROUBLE, 0, "%s: %s", reglist->regexps, m);
 }
    }
}
