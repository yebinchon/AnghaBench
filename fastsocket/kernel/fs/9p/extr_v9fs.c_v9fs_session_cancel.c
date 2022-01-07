
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int clnt; } ;


 int P9_DEBUG_ERROR ;
 int P9_DPRINTK (int ,char*,struct v9fs_session_info*) ;
 int p9_client_disconnect (int ) ;

void v9fs_session_cancel(struct v9fs_session_info *v9ses) {
 P9_DPRINTK(P9_DEBUG_ERROR, "cancel session %p\n", v9ses);
 p9_client_disconnect(v9ses->clnt);
}
