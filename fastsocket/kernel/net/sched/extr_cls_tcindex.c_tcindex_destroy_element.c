
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_walker {int dummy; } ;
struct tcf_proto {int dummy; } ;


 int __tcindex_delete (struct tcf_proto*,unsigned long,int ) ;

__attribute__((used)) static int tcindex_destroy_element(struct tcf_proto *tp,
    unsigned long arg, struct tcf_walker *walker)
{
 return __tcindex_delete(tp, arg, 0);
}
