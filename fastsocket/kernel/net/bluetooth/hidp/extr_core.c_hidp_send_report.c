
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {int dummy; } ;
struct hid_report {int size; scalar_t__ id; } ;
typedef int buf ;


 int EIO ;
 int hid_output_report (struct hid_report*,unsigned char*) ;
 int hidp_queue_report (struct hidp_session*,unsigned char*,int) ;

__attribute__((used)) static int hidp_send_report(struct hidp_session *session, struct hid_report *report)
{
 unsigned char buf[32];
 int rsize;

 rsize = ((report->size - 1) >> 3) + 1 + (report->id > 0);
 if (rsize > sizeof(buf))
  return -EIO;

 hid_output_report(report, buf);

 return hidp_queue_report(session, buf, rsize);
}
