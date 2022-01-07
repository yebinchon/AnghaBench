
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int len; int cmd; int ext; } ;
struct carl9170_cmd {int data; TYPE_1__ hdr; } ;


 int DBG (char*,...) ;
 scalar_t__ get_int_buf () ;
 int memcpy (int ,int const*,int const) ;
 scalar_t__ unlikely (int const) ;
 int usb_trigger_in () ;

void send_cmd_to_host(const uint8_t len, const uint8_t type,
        const uint8_t ext, const uint8_t *body)
{
 struct carl9170_cmd *resp;
 resp = (struct carl9170_cmd *) get_int_buf();
 if (unlikely(resp == ((void*)0))) {

  DBG("out of msg buffers\n");
  return ;
 }

 resp->hdr.len = len;
 resp->hdr.cmd = type;
 resp->hdr.ext = ext;

 memcpy(resp->data, body, len);
 usb_trigger_in();
}
