
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnep_session {int list; } ;


 int THIS_MODULE ;
 int list_del (int *) ;
 int module_put (int ) ;

__attribute__((used)) static void __bnep_unlink_session(struct bnep_session *s)
{
 list_del(&s->list);
 module_put(THIS_MODULE);
}
