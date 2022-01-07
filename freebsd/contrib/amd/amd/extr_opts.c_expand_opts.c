
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** opt; char* val; } ;
typedef TYPE_1__ opt_apply ;


 int TRUE ;
 int XFREE (char*) ;
 void* expand_op (char*,int) ;

__attribute__((used)) static void
expand_opts(opt_apply *p, int sel_p)
{
  if (*p->opt) {
    *p->opt = expand_op(*p->opt, sel_p);
  } else if (p->val) {





    char *s = expand_op(p->val, TRUE);
    *p->opt = expand_op(s, sel_p);
    XFREE(s);
  }
}
