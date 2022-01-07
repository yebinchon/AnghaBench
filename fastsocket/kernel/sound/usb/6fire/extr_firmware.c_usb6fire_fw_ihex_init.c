
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ihex_record {scalar_t__ txt_offset; scalar_t__ error; scalar_t__ max_len; int len; int txt_length; int txt_data; } ;
struct firmware {int size; int data; } ;


 int EINVAL ;
 scalar_t__ max (int ,scalar_t__) ;
 scalar_t__ usb6fire_fw_ihex_next_record (struct ihex_record*) ;

__attribute__((used)) static int usb6fire_fw_ihex_init(const struct firmware *fw,
  struct ihex_record *record)
{
 record->txt_data = fw->data;
 record->txt_length = fw->size;
 record->txt_offset = 0;
 record->max_len = 0;


 while (usb6fire_fw_ihex_next_record(record))
  record->max_len = max(record->len, record->max_len);
 if (record->error)
  return -EINVAL;
 record->txt_offset = 0;
 return 0;
}
