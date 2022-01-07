
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_line6_pod {char prog_data; int line6; } ;


 int POD_SYSEX_DUMP ;
 size_t SYSEX_DATA_OFS ;
 int kfree (char*) ;
 int line6_send_sysex_message (int *,char*,int) ;
 int memcpy (char*,unsigned char const*,int) ;
 char* pod_alloc_sysex_buffer (struct usb_line6_pod*,int ,int) ;
 int pod_mark_batch_all_dirty (struct usb_line6_pod*) ;

__attribute__((used)) static void pod_dump(struct usb_line6_pod *pod, const unsigned char *data)
{
 int size = 1 + sizeof(pod->prog_data);
 char *sysex = pod_alloc_sysex_buffer(pod, POD_SYSEX_DUMP, size);
 if (!sysex)
  return;


 sysex[SYSEX_DATA_OFS] = 5;
 memcpy(sysex + SYSEX_DATA_OFS + 1, data, sizeof(pod->prog_data));
 line6_send_sysex_message(&pod->line6, sysex, size);
 memcpy(&pod->prog_data, data, sizeof(pod->prog_data));
 pod_mark_batch_all_dirty(pod);
 kfree(sysex);
}
