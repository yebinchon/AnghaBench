
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmtp_session {int list; } ;


 int THIS_MODULE ;
 int __module_get (int ) ;
 int cmtp_session_list ;
 int list_add (int *,int *) ;

__attribute__((used)) static void __cmtp_link_session(struct cmtp_session *session)
{
 __module_get(THIS_MODULE);
 list_add(&session->list, &cmtp_session_list);
}
