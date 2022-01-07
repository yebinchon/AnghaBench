
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc_neh {int list_node; } ;
struct uwb_rc {int dummy; } ;


 int __uwb_rc_ctx_put (struct uwb_rc*,struct uwb_rc_neh*) ;
 int list_del (int *) ;

__attribute__((used)) static void __uwb_rc_neh_rm(struct uwb_rc *rc, struct uwb_rc_neh *neh)
{
 __uwb_rc_ctx_put(rc, neh);
 list_del(&neh->list_node);
}
