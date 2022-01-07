
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {int rd_size; int rd_data; int hid; } ;
struct hid_device {struct hidp_session* driver_data; } ;


 int hid_parse_report (int ,int ,int ) ;

__attribute__((used)) static int hidp_parse(struct hid_device *hid)
{
 struct hidp_session *session = hid->driver_data;

 return hid_parse_report(session->hid, session->rd_data,
   session->rd_size);
}
