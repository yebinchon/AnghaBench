
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {int dummy; } ;


 int __hidp_send_ctrl_message (struct hidp_session*,unsigned char,unsigned char*,int) ;
 int hidp_schedule (struct hidp_session*) ;

__attribute__((used)) static inline int hidp_send_ctrl_message(struct hidp_session *session,
   unsigned char hdr, unsigned char *data, int size)
{
 int err;

 err = __hidp_send_ctrl_message(session, hdr, data, size);

 hidp_schedule(session);

 return err;
}
