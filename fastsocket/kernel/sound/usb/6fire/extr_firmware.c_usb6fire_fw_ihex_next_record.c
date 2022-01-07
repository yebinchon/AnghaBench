
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ihex_record {int error; int txt_offset; int txt_length; char* txt_data; int len; int address; int* data; } ;


 int usb6fire_fw_ihex_hex (char*,int*) ;

__attribute__((used)) static bool usb6fire_fw_ihex_next_record(struct ihex_record *record)
{
 u8 crc = 0;
 u8 type;
 int i;

 record->error = 0;


 while (record->txt_offset < record->txt_length
   && record->txt_data[record->txt_offset] != ':')
  record->txt_offset++;
 if (record->txt_offset == record->txt_length)
  return 0;


 record->txt_offset++;
 if (record->txt_offset + 8 > record->txt_length) {
  record->error = 1;
  return 0;
 }

 record->len = usb6fire_fw_ihex_hex(record->txt_data +
   record->txt_offset, &crc);
 record->txt_offset += 2;
 record->address = usb6fire_fw_ihex_hex(record->txt_data +
   record->txt_offset, &crc) << 8;
 record->txt_offset += 2;
 record->address |= usb6fire_fw_ihex_hex(record->txt_data +
   record->txt_offset, &crc);
 record->txt_offset += 2;
 type = usb6fire_fw_ihex_hex(record->txt_data +
   record->txt_offset, &crc);
 record->txt_offset += 2;


 if (record->txt_offset + 2 * (record->len + 1) > record->txt_length) {
  record->error = 1;
  return 0;
 }
 for (i = 0; i < record->len; i++) {
  record->data[i] = usb6fire_fw_ihex_hex(record->txt_data
    + record->txt_offset, &crc);
  record->txt_offset += 2;
 }
 usb6fire_fw_ihex_hex(record->txt_data + record->txt_offset, &crc);
 if (crc) {
  record->error = 1;
  return 0;
 }

 if (type == 1 || !record->len)
  return 0;
 else if (type == 0)
  return 1;
 else {
  record->error = 1;
  return 0;
 }
}
