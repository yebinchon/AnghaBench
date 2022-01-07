
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnep_session {int list; } ;


 int THIS_MODULE ;
 int __module_get (int ) ;
 int bnep_session_list ;
 int list_add (int *,int *) ;

__attribute__((used)) static void __bnep_link_session(struct bnep_session *s)
{



 __module_get(THIS_MODULE);
 list_add(&s->list, &bnep_session_list);
}
