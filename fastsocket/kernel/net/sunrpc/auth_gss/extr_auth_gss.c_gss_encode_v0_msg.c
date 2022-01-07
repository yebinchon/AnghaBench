
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int * data; } ;
struct gss_upcall_msg {TYPE_1__ msg; int uid; } ;



__attribute__((used)) static void gss_encode_v0_msg(struct gss_upcall_msg *gss_msg)
{
 gss_msg->msg.data = &gss_msg->uid;
 gss_msg->msg.len = sizeof(gss_msg->uid);
}
