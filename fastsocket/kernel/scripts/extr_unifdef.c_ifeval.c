
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Linetype ;


 int LT_IF ;
 int debug (char*,...) ;
 int eval_ops ;
 int eval_table (int ,int*,char const**) ;
 int keepthis ;
 scalar_t__ killconsts ;

__attribute__((used)) static Linetype
ifeval(const char **cpp)
{
 const char *cp = *cpp;
 int ret;
 int val;

 debug("eval %s", *cpp);
 keepthis = killconsts ? 0 : 1;
 ret = eval_table(eval_ops, &val, &cp);
 if (ret != LT_IF)
  *cpp = cp;
 debug("eval = %d", val);
 return (keepthis ? LT_IF : ret);
}
