
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_entry {struct hda_codec* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct hda_codec {unsigned int addr; unsigned int afg; unsigned int mfg; unsigned int vendor_id; unsigned int subsystem_id; unsigned int revision_id; int (* proc_widget_hook ) (struct snd_info_buffer*,struct hda_codec*,unsigned int) ;scalar_t__ pin_amp_workaround; scalar_t__ single_adc_amp; int nids; int mixers; int mfg_unsol; int mfg_function_id; int afg_unsol; int afg_function_id; scalar_t__ chip_name; scalar_t__ vendor_name; } ;
typedef unsigned int hda_nid_t ;


 int AC_PAR_AUDIO_WIDGET_CAP ;
 unsigned int AC_WCAP_CONN_LIST ;
 unsigned int AC_WCAP_CP_CAPS ;
 unsigned int AC_WCAP_DELAY ;
 unsigned int AC_WCAP_DELAY_SHIFT ;
 unsigned int AC_WCAP_DIGITAL ;
 unsigned int AC_WCAP_FORMAT_OVRD ;
 unsigned int AC_WCAP_IN_AMP ;
 unsigned int AC_WCAP_LR_SWAP ;
 unsigned int AC_WCAP_OUT_AMP ;
 unsigned int AC_WCAP_POWER ;
 unsigned int AC_WCAP_PROC_WID ;
 unsigned int AC_WCAP_STEREO ;
 unsigned int AC_WCAP_STRIPE ;
 unsigned int AC_WCAP_UNSOL_CAP ;




 int GFP_KERNEL ;
 int HDA_INPUT ;
 int HDA_OUTPUT ;
 unsigned int get_wcaps_channels (unsigned int) ;
 unsigned int get_wcaps_type (unsigned int) ;
 int get_wid_type_name (unsigned int) ;
 int kfree (unsigned int*) ;
 unsigned int* kmalloc (int,int ) ;
 int print_amp_caps (struct snd_info_buffer*,struct hda_codec*,unsigned int,int ) ;
 int print_amp_vals (struct snd_info_buffer*,struct hda_codec*,unsigned int,int ,unsigned int,int) ;
 int print_audio_io (struct snd_info_buffer*,struct hda_codec*,unsigned int,unsigned int) ;
 int print_conn_list (struct snd_info_buffer*,struct hda_codec*,unsigned int,unsigned int,unsigned int*,int) ;
 int print_digital_conv (struct snd_info_buffer*,struct hda_codec*,unsigned int) ;
 int print_gpio (struct snd_info_buffer*,struct hda_codec*,unsigned int) ;
 int print_nid_array (struct snd_info_buffer*,struct hda_codec*,unsigned int,int *) ;
 int print_nid_pcms (struct snd_info_buffer*,struct hda_codec*,unsigned int) ;
 int print_pcm_caps (struct snd_info_buffer*,struct hda_codec*,unsigned int) ;
 int print_pin_caps (struct snd_info_buffer*,struct hda_codec*,unsigned int,int*) ;
 int print_pin_ctls (struct snd_info_buffer*,struct hda_codec*,unsigned int,int) ;
 int print_power_state (struct snd_info_buffer*,struct hda_codec*,unsigned int) ;
 int print_proc_caps (struct snd_info_buffer*,struct hda_codec*,unsigned int) ;
 int print_unsol_cap (struct snd_info_buffer*,struct hda_codec*,unsigned int) ;
 int print_vol_knob (struct snd_info_buffer*,struct hda_codec*,unsigned int) ;
 int snd_hda_get_num_raw_conns (struct hda_codec*,unsigned int) ;
 scalar_t__ snd_hda_get_raw_connections (struct hda_codec*,unsigned int,unsigned int*,int) ;
 int snd_hda_get_sub_nodes (struct hda_codec*,unsigned int,unsigned int*) ;
 unsigned int snd_hda_param_read (struct hda_codec*,unsigned int,int ) ;
 int snd_hda_power_down (struct hda_codec*) ;
 int snd_hda_power_up (struct hda_codec*) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;
 int stub1 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ;
 int stub2 (struct snd_info_buffer*,struct hda_codec*,unsigned int) ;

__attribute__((used)) static void print_codec_info(struct snd_info_entry *entry,
        struct snd_info_buffer *buffer)
{
 struct hda_codec *codec = entry->private_data;
 hda_nid_t nid;
 int i, nodes;

 snd_iprintf(buffer, "Codec: ");
 if (codec->vendor_name && codec->chip_name)
  snd_iprintf(buffer, "%s %s\n",
       codec->vendor_name, codec->chip_name);
 else
  snd_iprintf(buffer, "Not Set\n");
 snd_iprintf(buffer, "Address: %d\n", codec->addr);
 if (codec->afg)
  snd_iprintf(buffer, "AFG Function Id: 0x%x (unsol %u)\n",
   codec->afg_function_id, codec->afg_unsol);
 if (codec->mfg)
  snd_iprintf(buffer, "MFG Function Id: 0x%x (unsol %u)\n",
   codec->mfg_function_id, codec->mfg_unsol);
 snd_iprintf(buffer, "Vendor Id: 0x%08x\n", codec->vendor_id);
 snd_iprintf(buffer, "Subsystem Id: 0x%08x\n", codec->subsystem_id);
 snd_iprintf(buffer, "Revision Id: 0x%x\n", codec->revision_id);

 if (codec->mfg)
  snd_iprintf(buffer, "Modem Function Group: 0x%x\n", codec->mfg);
 else
  snd_iprintf(buffer, "No Modem Function Group found\n");

 if (! codec->afg)
  return;
 snd_hda_power_up(codec);
 snd_iprintf(buffer, "Default PCM:\n");
 print_pcm_caps(buffer, codec, codec->afg);
 snd_iprintf(buffer, "Default Amp-In caps: ");
 print_amp_caps(buffer, codec, codec->afg, HDA_INPUT);
 snd_iprintf(buffer, "Default Amp-Out caps: ");
 print_amp_caps(buffer, codec, codec->afg, HDA_OUTPUT);
 snd_iprintf(buffer, "State of AFG node 0x%02x:\n", codec->afg);
 print_power_state(buffer, codec, codec->afg);

 nodes = snd_hda_get_sub_nodes(codec, codec->afg, &nid);
 if (! nid || nodes < 0) {
  snd_iprintf(buffer, "Invalid AFG subtree\n");
  snd_hda_power_down(codec);
  return;
 }

 print_gpio(buffer, codec, codec->afg);
 if (codec->proc_widget_hook)
  codec->proc_widget_hook(buffer, codec, codec->afg);

 for (i = 0; i < nodes; i++, nid++) {
  unsigned int wid_caps =
   snd_hda_param_read(codec, nid,
        AC_PAR_AUDIO_WIDGET_CAP);
  unsigned int wid_type = get_wcaps_type(wid_caps);
  hda_nid_t *conn = ((void*)0);
  int conn_len = 0;

  snd_iprintf(buffer, "Node 0x%02x [%s] wcaps 0x%x:", nid,
       get_wid_type_name(wid_type), wid_caps);
  if (wid_caps & AC_WCAP_STEREO) {
   unsigned int chans = get_wcaps_channels(wid_caps);
   if (chans == 2)
    snd_iprintf(buffer, " Stereo");
   else
    snd_iprintf(buffer, " %d-Channels", chans);
  } else
   snd_iprintf(buffer, " Mono");
  if (wid_caps & AC_WCAP_DIGITAL)
   snd_iprintf(buffer, " Digital");
  if (wid_caps & AC_WCAP_IN_AMP)
   snd_iprintf(buffer, " Amp-In");
  if (wid_caps & AC_WCAP_OUT_AMP)
   snd_iprintf(buffer, " Amp-Out");
  if (wid_caps & AC_WCAP_STRIPE)
   snd_iprintf(buffer, " Stripe");
  if (wid_caps & AC_WCAP_LR_SWAP)
   snd_iprintf(buffer, " R/L");
  if (wid_caps & AC_WCAP_CP_CAPS)
   snd_iprintf(buffer, " CP");
  snd_iprintf(buffer, "\n");

  print_nid_array(buffer, codec, nid, &codec->mixers);
  print_nid_array(buffer, codec, nid, &codec->nids);
  print_nid_pcms(buffer, codec, nid);




  if (wid_type == 128)
   wid_caps |= AC_WCAP_CONN_LIST;

  if (wid_caps & AC_WCAP_CONN_LIST) {
   conn_len = snd_hda_get_num_raw_conns(codec, nid);
   if (conn_len > 0) {
    conn = kmalloc(sizeof(hda_nid_t) * conn_len,
            GFP_KERNEL);
    if (!conn)
     return;
    if (snd_hda_get_raw_connections(codec, nid, conn,
        conn_len) < 0)
     conn_len = 0;
   }
  }

  if (wid_caps & AC_WCAP_IN_AMP) {
   snd_iprintf(buffer, "  Amp-In caps: ");
   print_amp_caps(buffer, codec, nid, HDA_INPUT);
   snd_iprintf(buffer, "  Amp-In vals: ");
   if (wid_type == 129 ||
       (codec->single_adc_amp &&
        wid_type == 131))
    print_amp_vals(buffer, codec, nid, HDA_INPUT,
            wid_caps & AC_WCAP_STEREO,
            1);
   else
    print_amp_vals(buffer, codec, nid, HDA_INPUT,
            wid_caps & AC_WCAP_STEREO,
            conn_len);
  }
  if (wid_caps & AC_WCAP_OUT_AMP) {
   snd_iprintf(buffer, "  Amp-Out caps: ");
   print_amp_caps(buffer, codec, nid, HDA_OUTPUT);
   snd_iprintf(buffer, "  Amp-Out vals: ");
   if (wid_type == 129 &&
       codec->pin_amp_workaround)
    print_amp_vals(buffer, codec, nid, HDA_OUTPUT,
            wid_caps & AC_WCAP_STEREO,
            conn_len);
   else
    print_amp_vals(buffer, codec, nid, HDA_OUTPUT,
            wid_caps & AC_WCAP_STEREO, 1);
  }

  switch (wid_type) {
  case 129: {
   int supports_vref;
   print_pin_caps(buffer, codec, nid, &supports_vref);
   print_pin_ctls(buffer, codec, nid, supports_vref);
   break;
  }
  case 128:
   print_vol_knob(buffer, codec, nid);
   break;
  case 130:
  case 131:
   print_audio_io(buffer, codec, nid, wid_type);
   if (wid_caps & AC_WCAP_DIGITAL)
    print_digital_conv(buffer, codec, nid);
   if (wid_caps & AC_WCAP_FORMAT_OVRD) {
    snd_iprintf(buffer, "  PCM:\n");
    print_pcm_caps(buffer, codec, nid);
   }
   break;
  }

  if (wid_caps & AC_WCAP_UNSOL_CAP)
   print_unsol_cap(buffer, codec, nid);

  if (wid_caps & AC_WCAP_POWER)
   print_power_state(buffer, codec, nid);

  if (wid_caps & AC_WCAP_DELAY)
   snd_iprintf(buffer, "  Delay: %d samples\n",
        (wid_caps & AC_WCAP_DELAY) >>
        AC_WCAP_DELAY_SHIFT);

  if (wid_caps & AC_WCAP_CONN_LIST)
   print_conn_list(buffer, codec, nid, wid_type,
     conn, conn_len);

  if (wid_caps & AC_WCAP_PROC_WID)
   print_proc_caps(buffer, codec, nid);

  if (codec->proc_widget_hook)
   codec->proc_widget_hook(buffer, codec, nid);

  kfree(conn);
 }
 snd_hda_power_down(codec);
}
