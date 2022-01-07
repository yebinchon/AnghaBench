
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ classid; } ;
struct tcindex_filter_result {TYPE_1__ res; int exts; } ;


 scalar_t__ tcf_exts_is_predicative (int *) ;

__attribute__((used)) static inline int
tcindex_filter_is_set(struct tcindex_filter_result *r)
{
 return tcf_exts_is_predicative(&r->exts) || r->res.classid;
}
