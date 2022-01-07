
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct carlu {int tx_stream; int extra_headroom; int rx_stream; void* miniboot_size; void* rx_max; int dma_chunks; void* dma_chunk_size; int fw; } ;
struct carl9170fw_otus_desc {int miniboot_size; int feature_set; int rx_max_frame_len; int tx_descs; int tx_frag_len; } ;
struct ar9170_stream {int dummy; } ;


 int CARL9170FW_DUMMY_FEATURE ;
 int CARL9170FW_MINIBOOT ;
 int CARL9170FW_OTUS_DESC_CUR_VER ;
 int CARL9170FW_USB_DOWN_STREAM ;
 int CARL9170FW_USB_INIT_FIRMWARE ;
 int CARL9170FW_USB_RESP_EP2 ;
 int CARL9170FW_USB_UP_STREAM ;
 int EINVAL ;
 int ENODATA ;
 int EOPNOTSUPP ;
 scalar_t__ OTUS_MAGIC ;
 scalar_t__ carl9170fw_supports (int ,int ) ;
 struct carl9170fw_otus_desc* carlfw_find_desc (int ,int *,int,int ) ;
 int dbg (char*) ;
 int err (char*) ;
 void* le16_to_cpu (int ) ;

int carlusb_fw_check(struct carlu *ar)
{
 struct carl9170fw_otus_desc *otus_desc;

 otus_desc = carlfw_find_desc(ar->fw, (uint8_t *) OTUS_MAGIC,
         sizeof(*otus_desc),
         CARL9170FW_OTUS_DESC_CUR_VER);

 if (!otus_desc) {
  err("No valid USB descriptor found.\n");
  return -ENODATA;
 }

 if (!carl9170fw_supports(otus_desc->feature_set, CARL9170FW_DUMMY_FEATURE)) {
  err("Invalid Firmware Descriptor.\n");
  return -EINVAL;
 }

 if (!carl9170fw_supports(otus_desc->feature_set, CARL9170FW_USB_INIT_FIRMWARE)) {
  err("Firmware does not know how to initialize USB core.\n");
  return -EOPNOTSUPP;
 }

 if (carl9170fw_supports(otus_desc->feature_set, CARL9170FW_USB_DOWN_STREAM)) {
  dbg("Enabled tx stream mode.\n");
  ar->tx_stream = 1;
  ar->extra_headroom = sizeof(struct ar9170_stream);
 }

 if (carl9170fw_supports(otus_desc->feature_set, CARL9170FW_USB_UP_STREAM)) {
  dbg("Enabled rx stream mode.\n");
  ar->rx_stream = 1;
 }

 if (carl9170fw_supports(otus_desc->feature_set, CARL9170FW_USB_RESP_EP2))
  dbg("Firmware sends traps over EP2.\n");

 ar->dma_chunk_size = le16_to_cpu(otus_desc->tx_frag_len);
 ar->dma_chunks = otus_desc->tx_descs;
 ar->rx_max = le16_to_cpu(otus_desc->rx_max_frame_len);

 if (carl9170fw_supports(otus_desc->feature_set, CARL9170FW_MINIBOOT))
  ar->miniboot_size = le16_to_cpu(otus_desc->miniboot_size);

 return 0;
}
