
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct usb_device {int dummy; } ;
struct firmware {int* data; int size; } ;


 int F8051_USBCS ;
 int FW_GET_BYTE (int const*) ;
 scalar_t__ crc32_be (int ,int const*,int) ;
 int get_unaligned_le16 (int const*) ;
 scalar_t__ get_unaligned_le32 (int const*) ;
 int release_firmware (struct firmware const*) ;
 int uea_enters (struct usb_device*) ;
 int uea_err (struct usb_device*,char*,...) ;
 int uea_info (struct usb_device*,char*) ;
 int uea_leaves (struct usb_device*) ;
 int uea_send_modem_cmd (struct usb_device*,int ,int,int const*) ;

__attribute__((used)) static void uea_upload_pre_firmware(const struct firmware *fw_entry, void *context)
{
 struct usb_device *usb = context;
 const u8 *pfw;
 u8 value;
 u32 crc = 0;
 int ret, size;

 uea_enters(usb);
 if (!fw_entry) {
  uea_err(usb, "firmware is not available\n");
  goto err;
 }

 pfw = fw_entry->data;
 size = fw_entry->size;
 if (size < 4)
  goto err_fw_corrupted;

 crc = get_unaligned_le32(pfw);
 pfw += 4;
 size -= 4;
 if (crc32_be(0, pfw, size) != crc)
  goto err_fw_corrupted;




 value = 1;
 ret = uea_send_modem_cmd(usb, F8051_USBCS, sizeof(value), &value);

 if (ret < 0) {
  uea_err(usb, "modem reset failed with error %d\n", ret);
  goto err;
 }

 while (size > 3) {
  u8 len = FW_GET_BYTE(pfw);
  u16 add = get_unaligned_le16(pfw + 1);

  size -= len + 3;
  if (size < 0)
   goto err_fw_corrupted;

  ret = uea_send_modem_cmd(usb, add, len, pfw + 3);
  if (ret < 0) {
   uea_err(usb, "uploading firmware data failed "
     "with error %d\n", ret);
   goto err;
  }
  pfw += len + 3;
 }

 if (size != 0)
  goto err_fw_corrupted;




 value = 0;
 ret = uea_send_modem_cmd(usb, F8051_USBCS, 1, &value);
 if (ret < 0)
  uea_err(usb, "modem de-assert failed with error %d\n", ret);
 else
  uea_info(usb, "firmware uploaded\n");

 goto err;

err_fw_corrupted:
 uea_err(usb, "firmware is corrupted\n");
err:
 release_firmware(fw_entry);
 uea_leaves(usb);
}
