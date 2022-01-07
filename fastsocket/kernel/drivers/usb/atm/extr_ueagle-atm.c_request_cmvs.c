
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct uea_softc {TYPE_1__* usb_dev; } ;
struct uea_cmvs_v2 {int dummy; } ;
struct firmware {int size; scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int EILSEQ ;
 int INS_TO_USBDEV (struct uea_softc*) ;
 int UEA_FW_NAME_MAX ;
 int cmvs_file_name (struct uea_softc*,char*,int) ;
 scalar_t__ crc32_be (int ,int*,int) ;
 scalar_t__ get_unaligned_le32 (int*) ;
 int release_firmware (struct firmware const*) ;
 int request_cmvs_old (struct uea_softc*,void**,struct firmware const**) ;
 int request_firmware (struct firmware const**,char*,int *) ;
 scalar_t__ strncmp (int*,char*,int) ;
 int uea_err (int ,char*,char*,...) ;
 int uea_warn (int ,char*,char*) ;

__attribute__((used)) static int request_cmvs(struct uea_softc *sc,
   void **cmvs, const struct firmware **fw, int *ver)
{
 int ret, size;
 u32 crc;
 u8 *data;
 char cmv_name[UEA_FW_NAME_MAX];

 cmvs_file_name(sc, cmv_name, 2);
 ret = request_firmware(fw, cmv_name, &sc->usb_dev->dev);
 if (ret < 0) {

  if (*ver == 1) {
   uea_warn(INS_TO_USBDEV(sc), "requesting firmware %s failed, "
    "try to get older cmvs\n", cmv_name);
   return request_cmvs_old(sc, cmvs, fw);
  }
  uea_err(INS_TO_USBDEV(sc),
         "requesting firmware %s failed with error %d\n",
         cmv_name, ret);
  return ret;
 }

 size = (*fw)->size;
 data = (u8 *) (*fw)->data;
 if (size < 4 || strncmp(data, "cmv2", 4) != 0) {
  if (*ver == 1) {
   uea_warn(INS_TO_USBDEV(sc), "firmware %s is corrupted, "
    "try to get older cmvs\n", cmv_name);
   release_firmware(*fw);
   return request_cmvs_old(sc, cmvs, fw);
  }
  goto err_fw_corrupted;
 }

 *ver = 2;

 data += 4;
 size -= 4;
 if (size < 5)
  goto err_fw_corrupted;

 crc = get_unaligned_le32(data);
 data += 4;
 size -= 4;
 if (crc32_be(0, data, size) != crc)
  goto err_fw_corrupted;

 if (size != *data * sizeof(struct uea_cmvs_v2) + 1)
  goto err_fw_corrupted;

 *cmvs = (void *) (data + 1);
 return *data;

err_fw_corrupted:
 uea_err(INS_TO_USBDEV(sc), "firmware %s is corrupted\n", cmv_name);
 release_firmware(*fw);
 return -EILSEQ;
}
