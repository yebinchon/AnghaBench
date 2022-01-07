
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmtp_session {int wait; } ;
struct cmtp_application {scalar_t__ state; int msgnum; int mapping; } ;
struct capi_ctr {struct cmtp_session* driverdata; } ;
typedef int __u16 ;


 scalar_t__ BT_CLOSED ;
 int BT_DBG (char*,struct capi_ctr*,int ) ;
 int BT_ERR (char*) ;
 int CAPI_FUNCTION_RELEASE ;
 int CAPI_REQ ;
 int CMTP_APPLID ;
 int CMTP_INTEROP_TIMEOUT ;
 int cmtp_application_del (struct cmtp_session*,struct cmtp_application*) ;
 struct cmtp_application* cmtp_application_get (struct cmtp_session*,int ,int ) ;
 int cmtp_msgnum_get (struct cmtp_session*) ;
 int cmtp_send_interopmsg (struct cmtp_session*,int ,int ,int ,int ,int *,int ) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static void cmtp_release_appl(struct capi_ctr *ctrl, __u16 appl)
{
 struct cmtp_session *session = ctrl->driverdata;
 struct cmtp_application *application;

 BT_DBG("ctrl %p appl %d", ctrl, appl);

 application = cmtp_application_get(session, CMTP_APPLID, appl);
 if (!application) {
  BT_ERR("Can't find application");
  return;
 }

 application->msgnum = cmtp_msgnum_get(session);

 cmtp_send_interopmsg(session, CAPI_REQ, application->mapping, application->msgnum,
    CAPI_FUNCTION_RELEASE, ((void*)0), 0);

 wait_event_interruptible_timeout(session->wait,
   (application->state == BT_CLOSED), CMTP_INTEROP_TIMEOUT);

 cmtp_application_del(session, application);
}
