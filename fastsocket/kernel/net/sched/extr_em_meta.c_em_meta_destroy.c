
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct tcf_ematch {scalar_t__ data; } ;
struct meta_match {int dummy; } ;


 int meta_delete (struct meta_match*) ;

__attribute__((used)) static void em_meta_destroy(struct tcf_proto *tp, struct tcf_ematch *m)
{
 if (m)
  meta_delete((struct meta_match *) m->data);
}
