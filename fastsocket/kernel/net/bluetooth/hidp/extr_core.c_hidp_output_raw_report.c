
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int driver_data; } ;


 int EINVAL ;
 int ENOMEM ;
 unsigned char HIDP_DATA_RTYPE_FEATURE ;
 unsigned char HIDP_DATA_RTYPE_OUPUT ;
 unsigned char HIDP_TRANS_DATA ;
 unsigned char HIDP_TRANS_SET_REPORT ;


 scalar_t__ hidp_send_ctrl_message (int ,unsigned char,unsigned char*,size_t) ;

__attribute__((used)) static int hidp_output_raw_report(struct hid_device *hid, unsigned char *data, size_t count,
  unsigned char report_type)
{
 switch (report_type) {
 case 129:
  report_type = HIDP_TRANS_SET_REPORT | HIDP_DATA_RTYPE_FEATURE;
  break;
 case 128:
  report_type = HIDP_TRANS_DATA | HIDP_DATA_RTYPE_OUPUT;
  break;
 default:
  return -EINVAL;
 }

 if (hidp_send_ctrl_message(hid->driver_data, report_type,
   data, count))
  return -ENOMEM;
 return count;
}
