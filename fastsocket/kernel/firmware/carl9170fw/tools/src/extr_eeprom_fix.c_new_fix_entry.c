
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct carlfw {int dummy; } ;
struct carl9170fw_fix_entry {int dummy; } ;
struct carl9170fw_fix_desc {int head; int * data; } ;


 int CARL9170FW_FIX_DESC_CUR_VER ;
 int CARL9170FW_FIX_DESC_MIN_VER ;
 int ENOMEM ;
 scalar_t__ FIX_MAGIC ;
 int carl9170fw_fill_desc (int *,int *,int ,int ,int ) ;
 int carlfw_desc_add_tail (struct carlfw*,int *) ;
 int cpu_to_le16 (unsigned int) ;
 struct carl9170fw_fix_desc* malloc (unsigned int) ;
 int memcpy (int *,struct carl9170fw_fix_entry*,int) ;

__attribute__((used)) static int
new_fix_entry(struct carlfw *fw, struct carl9170fw_fix_entry *fix_entry)
{
 struct carl9170fw_fix_desc *fix;
 unsigned int len;

 len = sizeof(*fix) + sizeof(*fix_entry);
 fix = malloc(len);
 if (!fix)
  return -ENOMEM;

 carl9170fw_fill_desc(&fix->head, (uint8_t *) FIX_MAGIC,
         cpu_to_le16(len),
         CARL9170FW_FIX_DESC_MIN_VER,
         CARL9170FW_FIX_DESC_CUR_VER);

 memcpy(&fix->data[0], fix_entry, sizeof(*fix_entry));

 return carlfw_desc_add_tail(fw, &fix->head);
}
