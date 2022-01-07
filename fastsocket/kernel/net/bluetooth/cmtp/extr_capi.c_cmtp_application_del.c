
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmtp_session {int dummy; } ;
struct cmtp_application {int list; } ;


 int BT_DBG (char*,struct cmtp_session*,struct cmtp_application*) ;
 int kfree (struct cmtp_application*) ;
 int list_del (int *) ;

__attribute__((used)) static void cmtp_application_del(struct cmtp_session *session, struct cmtp_application *app)
{
 BT_DBG("session %p application %p", session, app);

 if (app) {
  list_del(&app->list);
  kfree(app);
 }
}
