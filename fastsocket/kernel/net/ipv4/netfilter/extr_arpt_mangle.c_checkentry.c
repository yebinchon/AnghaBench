
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {struct arpt_mangle* targinfo; } ;
struct arpt_mangle {int flags; scalar_t__ target; } ;


 scalar_t__ ARPT_CONTINUE ;
 int ARPT_MANGLE_MASK ;
 scalar_t__ NF_ACCEPT ;
 scalar_t__ NF_DROP ;

__attribute__((used)) static bool checkentry(const struct xt_tgchk_param *par)
{
 const struct arpt_mangle *mangle = par->targinfo;

 if (mangle->flags & ~ARPT_MANGLE_MASK ||
     !(mangle->flags & ARPT_MANGLE_MASK))
  return 0;

 if (mangle->target != NF_DROP && mangle->target != NF_ACCEPT &&
    mangle->target != ARPT_CONTINUE)
  return 0;
 return 1;
}
