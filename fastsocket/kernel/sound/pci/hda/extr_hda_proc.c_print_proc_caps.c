
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int AC_PAR_PROC_CAP ;
 unsigned int AC_PCAP_BENIGN ;
 unsigned int AC_PCAP_NUM_COEF ;
 unsigned int AC_PCAP_NUM_COEF_SHIFT ;
 unsigned int snd_hda_param_read (struct hda_codec*,int ,int ) ;
 int snd_iprintf (struct snd_info_buffer*,char*,unsigned int,unsigned int) ;

__attribute__((used)) static void print_proc_caps(struct snd_info_buffer *buffer,
       struct hda_codec *codec, hda_nid_t nid)
{
 unsigned int proc_caps = snd_hda_param_read(codec, nid,
          AC_PAR_PROC_CAP);
 snd_iprintf(buffer, "  Processing caps: benign=%d, ncoeff=%d\n",
      proc_caps & AC_PCAP_BENIGN,
      (proc_caps & AC_PCAP_NUM_COEF) >> AC_PCAP_NUM_COEF_SHIFT);
}
