
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;


 int pr_debug (char*,struct tcf_proto*,unsigned long) ;

__attribute__((used)) static void tcindex_put(struct tcf_proto *tp, unsigned long f)
{
 pr_debug("tcindex_put(tp %p,f 0x%lx)\n", tp, f);
}
