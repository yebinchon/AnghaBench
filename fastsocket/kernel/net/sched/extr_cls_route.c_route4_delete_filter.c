
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct route4_filter {int exts; int res; } ;


 int kfree (struct route4_filter*) ;
 int tcf_exts_destroy (struct tcf_proto*,int *) ;
 int tcf_unbind_filter (struct tcf_proto*,int *) ;

__attribute__((used)) static inline void
route4_delete_filter(struct tcf_proto *tp, struct route4_filter *f)
{
 tcf_unbind_filter(tp, &f->res);
 tcf_exts_destroy(tp, &f->exts);
 kfree(f);
}
