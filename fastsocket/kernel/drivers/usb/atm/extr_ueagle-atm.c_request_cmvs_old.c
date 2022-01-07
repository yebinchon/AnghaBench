
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct uea_softc {TYPE_1__* usb_dev; } ;
struct uea_cmvs_v1 {int dummy; } ;
struct firmware {int size; scalar_t__ data; } ;
struct TYPE_2__ {int dev; } ;


 int EILSEQ ;
 int INS_TO_USBDEV (struct uea_softc*) ;
 int UEA_FW_NAME_MAX ;
 int cmvs_file_name (struct uea_softc*,char*,int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int *) ;
 int uea_err (int ,char*,char*,...) ;

__attribute__((used)) static int request_cmvs_old(struct uea_softc *sc,
   void **cmvs, const struct firmware **fw)
{
 int ret, size;
 u8 *data;
 char cmv_name[UEA_FW_NAME_MAX];

 cmvs_file_name(sc, cmv_name, 1);
 ret = request_firmware(fw, cmv_name, &sc->usb_dev->dev);
 if (ret < 0) {
  uea_err(INS_TO_USBDEV(sc),
         "requesting firmware %s failed with error %d\n",
         cmv_name, ret);
  return ret;
 }

 data = (u8 *) (*fw)->data;
 size = (*fw)->size;
 if (size < 1)
  goto err_fw_corrupted;

 if (size != *data * sizeof(struct uea_cmvs_v1) + 1)
  goto err_fw_corrupted;

 *cmvs = (void *)(data + 1);
 return *data;

err_fw_corrupted:
 uea_err(INS_TO_USBDEV(sc), "firmware %s is corrupted\n", cmv_name);
 release_firmware(*fw);
 return -EILSEQ;
}
