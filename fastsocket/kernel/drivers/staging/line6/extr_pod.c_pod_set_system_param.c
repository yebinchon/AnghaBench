
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char value ;
struct TYPE_2__ {int* control; } ;
struct usb_line6_pod {int line6; TYPE_1__ prog_data; } ;
typedef int ssize_t ;


 int EINVAL ;
 int POD_SYSEX_SYSTEM ;
 size_t POD_tuner ;
 size_t SYSEX_DATA_OFS ;
 int kfree (char*) ;
 int line6_send_sysex_message (int *,char*,int const) ;
 char* pod_alloc_sysex_buffer (struct usb_line6_pod*,int ,int const) ;
 unsigned short simple_strtoul (char const*,int *,int) ;

__attribute__((used)) static ssize_t pod_set_system_param(struct usb_line6_pod *pod, const char *buf,
        int count, int code, unsigned short mask,
        int tuner)
{
 char *sysex;
 static const int size = 5;
 unsigned short value;

 if (((pod->prog_data.control[POD_tuner] & 0x40) == 0) && tuner)
  return -EINVAL;


 sysex = pod_alloc_sysex_buffer(pod, POD_SYSEX_SYSTEM, size);
 if (!sysex)
  return 0;
 value = simple_strtoul(buf, ((void*)0), 10) & mask;
 sysex[SYSEX_DATA_OFS] = code;
 sysex[SYSEX_DATA_OFS + 1] = (value >> 12) & 0x0f;
 sysex[SYSEX_DATA_OFS + 2] = (value >> 8) & 0x0f;
 sysex[SYSEX_DATA_OFS + 3] = (value >> 4) & 0x0f;
 sysex[SYSEX_DATA_OFS + 4] = (value ) & 0x0f;
 line6_send_sysex_message(&pod->line6, sysex, size);
 kfree(sysex);
 return count;
}
