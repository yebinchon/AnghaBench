
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_info_entry {scalar_t__ private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct hdsp {int control_register; int state; int io_type; scalar_t__ clock_source_locked; int system_sample_rate; scalar_t__ precise_ptr; scalar_t__ period_bytes; scalar_t__ use_midi_tasklet; int control2_register; scalar_t__ iobase; int port; int irq; int playback_buffer; int capture_buffer; TYPE_1__* card; int card_name; } ;
struct TYPE_2__ {scalar_t__ number; } ;



 int EINVAL ;
 int H9632 ;
 int HDSP_AnalogExtensionBoard ;
 int HDSP_FirmwareCached ;
 int HDSP_LatencyMask ;
 int HDSP_LineOut ;
 unsigned int HDSP_Lock0 ;
 unsigned int HDSP_Lock1 ;
 unsigned int HDSP_Lock2 ;
 int HDSP_SPDIFEmphasis ;
 unsigned int HDSP_SPDIFErrorFlag ;




 int HDSP_SPDIFNonAudio ;
 int HDSP_SPDIFOpticalOut ;
 int HDSP_SPDIFProfessional ;
 unsigned int HDSP_SPDIFSync ;






 unsigned int HDSP_Sync0 ;
 unsigned int HDSP_Sync1 ;
 unsigned int HDSP_Sync2 ;
 unsigned int HDSP_TimecodeLock ;
 unsigned int HDSP_TimecodeSync ;
 int HDSP_fifoStatus ;
 int HDSP_midiStatusIn0 ;
 int HDSP_midiStatusIn1 ;
 int HDSP_midiStatusOut0 ;
 int HDSP_midiStatusOut1 ;
 int HDSP_status2Register ;
 int HDSP_statusRegister ;
 unsigned int HDSP_version0 ;
 unsigned int HDSP_version1 ;
 unsigned int HDSP_version2 ;
 unsigned int HDSP_wc_lock ;
 unsigned int HDSP_wc_sync ;
 int hdsp_ad_gain (struct hdsp*) ;
 int hdsp_autosync_ref (struct hdsp*) ;
 scalar_t__ hdsp_check_for_firmware (struct hdsp*,int ) ;
 scalar_t__ hdsp_check_for_iobox (struct hdsp*) ;
 int hdsp_clock_source (struct hdsp*) ;
 int hdsp_da_gain (struct hdsp*) ;
 int hdsp_decode_latency (int) ;
 int hdsp_external_sample_rate (struct hdsp*) ;
 int hdsp_hw_pointer (struct hdsp*) ;
 int hdsp_phone_gain (struct hdsp*) ;
 int hdsp_pref_sync_ref (struct hdsp*) ;
 int hdsp_read (struct hdsp*,int ) ;
 int hdsp_request_fw_loader (struct hdsp*) ;
 int hdsp_spdif_in (struct hdsp*) ;
 int hdsp_spdif_sample_rate (struct hdsp*) ;
 scalar_t__ hdsp_system_clock_mode (struct hdsp*) ;
 scalar_t__ hdsp_xlr_breakout_cable (struct hdsp*) ;
 scalar_t__ snd_hdsp_load_firmware_from_cache (struct hdsp*) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void
snd_hdsp_proc_read(struct snd_info_entry *entry, struct snd_info_buffer *buffer)
{
 struct hdsp *hdsp = (struct hdsp *) entry->private_data;
 unsigned int status;
 unsigned int status2;
 char *pref_sync_ref;
 char *autosync_ref;
 char *system_clock_mode;
 char *clock_source;
 int x;

 status = hdsp_read(hdsp, HDSP_statusRegister);
 status2 = hdsp_read(hdsp, HDSP_status2Register);

 snd_iprintf(buffer, "%s (Card #%d)\n", hdsp->card_name,
      hdsp->card->number + 1);
 snd_iprintf(buffer, "Buffers: capture %p playback %p\n",
      hdsp->capture_buffer, hdsp->playback_buffer);
 snd_iprintf(buffer, "IRQ: %d Registers bus: 0x%lx VM: 0x%lx\n",
      hdsp->irq, hdsp->port, (unsigned long)hdsp->iobase);
 snd_iprintf(buffer, "Control register: 0x%x\n", hdsp->control_register);
 snd_iprintf(buffer, "Control2 register: 0x%x\n",
      hdsp->control2_register);
 snd_iprintf(buffer, "Status register: 0x%x\n", status);
 snd_iprintf(buffer, "Status2 register: 0x%x\n", status2);

 if (hdsp_check_for_iobox(hdsp)) {
  snd_iprintf(buffer, "No I/O box connected.\n"
       "Please connect one and upload firmware.\n");
  return;
 }

 if (hdsp_check_for_firmware(hdsp, 0)) {
  if (hdsp->state & HDSP_FirmwareCached) {
   if (snd_hdsp_load_firmware_from_cache(hdsp) != 0) {
    snd_iprintf(buffer, "Firmware loading from "
         "cache failed, "
         "please upload manually.\n");
    return;
   }
  } else {
   int err = -EINVAL;



   if (err < 0) {
    snd_iprintf(buffer,
         "No firmware loaded nor cached, "
         "please upload firmware.\n");
    return;
   }
  }
 }

 snd_iprintf(buffer, "FIFO status: %d\n", hdsp_read(hdsp, HDSP_fifoStatus) & 0xff);
 snd_iprintf(buffer, "MIDI1 Output status: 0x%x\n", hdsp_read(hdsp, HDSP_midiStatusOut0));
 snd_iprintf(buffer, "MIDI1 Input status: 0x%x\n", hdsp_read(hdsp, HDSP_midiStatusIn0));
 snd_iprintf(buffer, "MIDI2 Output status: 0x%x\n", hdsp_read(hdsp, HDSP_midiStatusOut1));
 snd_iprintf(buffer, "MIDI2 Input status: 0x%x\n", hdsp_read(hdsp, HDSP_midiStatusIn1));
 snd_iprintf(buffer, "Use Midi Tasklet: %s\n", hdsp->use_midi_tasklet ? "on" : "off");

 snd_iprintf(buffer, "\n");

 x = 1 << (6 + hdsp_decode_latency(hdsp->control_register & HDSP_LatencyMask));

 snd_iprintf(buffer, "Buffer Size (Latency): %d samples (2 periods of %lu bytes)\n", x, (unsigned long) hdsp->period_bytes);
 snd_iprintf(buffer, "Hardware pointer (frames): %ld\n", hdsp_hw_pointer(hdsp));
 snd_iprintf(buffer, "Precise pointer: %s\n", hdsp->precise_ptr ? "on" : "off");
 snd_iprintf(buffer, "Line out: %s\n", (hdsp->control_register & HDSP_LineOut) ? "on" : "off");

 snd_iprintf(buffer, "Firmware version: %d\n", (status2&HDSP_version0)|(status2&HDSP_version1)<<1|(status2&HDSP_version2)<<2);

 snd_iprintf(buffer, "\n");

 switch (hdsp_clock_source(hdsp)) {
 case 147:
  clock_source = "AutoSync";
  break;
 case 143:
  clock_source = "Internal 32 kHz";
  break;
 case 142:
  clock_source = "Internal 44.1 kHz";
  break;
 case 141:
  clock_source = "Internal 48 kHz";
  break;
 case 140:
  clock_source = "Internal 64 kHz";
  break;
 case 139:
  clock_source = "Internal 88.2 kHz";
  break;
 case 138:
  clock_source = "Internal 96 kHz";
  break;
 case 146:
  clock_source = "Internal 128 kHz";
  break;
 case 145:
  clock_source = "Internal 176.4 kHz";
  break;
  case 144:
  clock_source = "Internal 192 kHz";
  break;
 default:
  clock_source = "Error";
 }
 snd_iprintf (buffer, "Sample Clock Source: %s\n", clock_source);

 if (hdsp_system_clock_mode(hdsp))
  system_clock_mode = "Slave";
 else
  system_clock_mode = "Master";

 switch (hdsp_pref_sync_ref (hdsp)) {
 case 128:
  pref_sync_ref = "Word Clock";
  break;
 case 130:
  pref_sync_ref = "ADAT Sync";
  break;
 case 129:
  pref_sync_ref = "SPDIF";
  break;
 case 133:
  pref_sync_ref = "ADAT1";
  break;
 case 132:
  pref_sync_ref = "ADAT2";
  break;
 case 131:
  pref_sync_ref = "ADAT3";
  break;
 default:
  pref_sync_ref = "Word Clock";
  break;
 }
 snd_iprintf (buffer, "Preferred Sync Reference: %s\n", pref_sync_ref);

 switch (hdsp_autosync_ref (hdsp)) {
 case 148:
  autosync_ref = "Word Clock";
  break;
 case 151:
  autosync_ref = "ADAT Sync";
  break;
 case 149:
  autosync_ref = "SPDIF";
  break;
 case 150:
  autosync_ref = "None";
  break;
 case 154:
  autosync_ref = "ADAT1";
  break;
 case 153:
  autosync_ref = "ADAT2";
  break;
 case 152:
  autosync_ref = "ADAT3";
  break;
 default:
  autosync_ref = "---";
  break;
 }
 snd_iprintf (buffer, "AutoSync Reference: %s\n", autosync_ref);

 snd_iprintf (buffer, "AutoSync Frequency: %d\n", hdsp_external_sample_rate(hdsp));

 snd_iprintf (buffer, "System Clock Mode: %s\n", system_clock_mode);

 snd_iprintf (buffer, "System Clock Frequency: %d\n", hdsp->system_sample_rate);
 snd_iprintf (buffer, "System Clock Locked: %s\n", hdsp->clock_source_locked ? "Yes" : "No");

 snd_iprintf(buffer, "\n");

 switch (hdsp_spdif_in(hdsp)) {
 case 134:
  snd_iprintf(buffer, "IEC958 input: Optical\n");
  break;
 case 136:
  snd_iprintf(buffer, "IEC958 input: Coaxial\n");
  break;
 case 135:
  snd_iprintf(buffer, "IEC958 input: Internal\n");
  break;
 case 137:
  snd_iprintf(buffer, "IEC958 input: AES\n");
  break;
 default:
  snd_iprintf(buffer, "IEC958 input: ???\n");
  break;
 }

 if (hdsp->control_register & HDSP_SPDIFOpticalOut)
  snd_iprintf(buffer, "IEC958 output: Coaxial & ADAT1\n");
 else
  snd_iprintf(buffer, "IEC958 output: Coaxial only\n");

 if (hdsp->control_register & HDSP_SPDIFProfessional)
  snd_iprintf(buffer, "IEC958 quality: Professional\n");
 else
  snd_iprintf(buffer, "IEC958 quality: Consumer\n");

 if (hdsp->control_register & HDSP_SPDIFEmphasis)
  snd_iprintf(buffer, "IEC958 emphasis: on\n");
 else
  snd_iprintf(buffer, "IEC958 emphasis: off\n");

 if (hdsp->control_register & HDSP_SPDIFNonAudio)
  snd_iprintf(buffer, "IEC958 NonAudio: on\n");
 else
  snd_iprintf(buffer, "IEC958 NonAudio: off\n");
 if ((x = hdsp_spdif_sample_rate (hdsp)) != 0)
  snd_iprintf (buffer, "IEC958 sample rate: %d\n", x);
 else
  snd_iprintf (buffer, "IEC958 sample rate: Error flag set\n");

 snd_iprintf(buffer, "\n");


 x = status & HDSP_Sync0;
 if (status & HDSP_Lock0)
  snd_iprintf(buffer, "ADAT1: %s\n", x ? "Sync" : "Lock");
 else
  snd_iprintf(buffer, "ADAT1: No Lock\n");

 switch (hdsp->io_type) {
 case 156:
 case 155:
  x = status & HDSP_Sync1;
  if (status & HDSP_Lock1)
   snd_iprintf(buffer, "ADAT2: %s\n", x ? "Sync" : "Lock");
  else
   snd_iprintf(buffer, "ADAT2: No Lock\n");
  x = status & HDSP_Sync2;
  if (status & HDSP_Lock2)
   snd_iprintf(buffer, "ADAT3: %s\n", x ? "Sync" : "Lock");
  else
   snd_iprintf(buffer, "ADAT3: No Lock\n");
  break;
 default:

  break;
 }

 x = status & HDSP_SPDIFSync;
 if (status & HDSP_SPDIFErrorFlag)
  snd_iprintf (buffer, "SPDIF: No Lock\n");
 else
  snd_iprintf (buffer, "SPDIF: %s\n", x ? "Sync" : "Lock");

 x = status2 & HDSP_wc_sync;
 if (status2 & HDSP_wc_lock)
  snd_iprintf (buffer, "Word Clock: %s\n", x ? "Sync" : "Lock");
 else
  snd_iprintf (buffer, "Word Clock: No Lock\n");

 x = status & HDSP_TimecodeSync;
 if (status & HDSP_TimecodeLock)
  snd_iprintf(buffer, "ADAT Sync: %s\n", x ? "Sync" : "Lock");
 else
  snd_iprintf(buffer, "ADAT Sync: No Lock\n");

 snd_iprintf(buffer, "\n");


 if (hdsp->io_type == H9632) {
  char *tmp;

  switch (hdsp_ad_gain(hdsp)) {
  case 0:
   tmp = "-10 dBV";
   break;
  case 1:
   tmp = "+4 dBu";
   break;
  default:
   tmp = "Lo Gain";
   break;
  }
  snd_iprintf(buffer, "AD Gain : %s\n", tmp);

  switch (hdsp_da_gain(hdsp)) {
  case 0:
   tmp = "Hi Gain";
   break;
  case 1:
   tmp = "+4 dBu";
   break;
  default:
   tmp = "-10 dBV";
   break;
  }
  snd_iprintf(buffer, "DA Gain : %s\n", tmp);

  switch (hdsp_phone_gain(hdsp)) {
  case 0:
   tmp = "0 dB";
   break;
  case 1:
   tmp = "-6 dB";
   break;
  default:
   tmp = "-12 dB";
   break;
  }
  snd_iprintf(buffer, "Phones Gain : %s\n", tmp);

  snd_iprintf(buffer, "XLR Breakout Cable : %s\n", hdsp_xlr_breakout_cable(hdsp) ? "yes" : "no");

  if (hdsp->control_register & HDSP_AnalogExtensionBoard)
   snd_iprintf(buffer, "AEB : on (ADAT1 internal)\n");
  else
   snd_iprintf(buffer, "AEB : off (ADAT1 external)\n");
  snd_iprintf(buffer, "\n");
 }

}
