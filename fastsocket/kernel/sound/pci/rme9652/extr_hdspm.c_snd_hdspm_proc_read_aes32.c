
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_info_entry {struct hdspm* private_data; } ;
struct snd_info_buffer {int dummy; } ;
struct hdspm {int control_register; int system_sample_rate; scalar_t__ precise_ptr; scalar_t__ period_bytes; int irq_count; scalar_t__ iobase; int port; int irq; int firmware_rev; TYPE_1__* card; int card_name; } ;
struct TYPE_2__ {scalar_t__ number; } ;
 unsigned int HDSPM_AES32_wcFreq_bit ;
 unsigned int HDSPM_AES32_wcLock ;
 unsigned int HDSPM_BufferID ;
 unsigned int HDSPM_BufferPositionMask ;
 int HDSPM_ClockModeMaster ;
 int HDSPM_DS_DoubleWire ;
 int HDSPM_Dolby ;
 int HDSPM_Emphasis ;
 int HDSPM_LatencyMask ;
 int HDSPM_LineOut ;
 int HDSPM_LockAES ;
 int HDSPM_QS_DoubleWire ;
 int HDSPM_QS_QuadWire ;
 unsigned int HDSPM_audioIRQPending ;
 int HDSPM_bit2freq (unsigned int) ;
 int HDSPM_clr_tms ;
 unsigned int HDSPM_midi0IRQPending ;
 unsigned int HDSPM_midi1IRQPending ;
 int HDSPM_midiStatusIn0 ;
 int HDSPM_midiStatusIn1 ;
 int HDSPM_midiStatusOut0 ;
 int HDSPM_midiStatusOut1 ;
 int HDSPM_statusRegister ;
 int HDSPM_statusRegister2 ;
 int HDSPM_timecodeRegister ;
 int hdspm_autosync_ref (struct hdspm*) ;
 int hdspm_clock_source (struct hdspm*) ;
 int hdspm_decode_latency (int) ;
 scalar_t__ hdspm_hw_pointer (struct hdspm*) ;
 int hdspm_pref_sync_ref (struct hdspm*) ;
 int hdspm_read (struct hdspm*,int ) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void
snd_hdspm_proc_read_aes32(struct snd_info_entry * entry,
     struct snd_info_buffer *buffer)
{
 struct hdspm *hdspm = entry->private_data;
 unsigned int status;
 unsigned int status2;
 unsigned int timecode;
 int pref_syncref;
 char *autosync_ref;
 char *system_clock_mode;
 char *clock_source;
 int x;

 status = hdspm_read(hdspm, HDSPM_statusRegister);
 status2 = hdspm_read(hdspm, HDSPM_statusRegister2);
 timecode = hdspm_read(hdspm, HDSPM_timecodeRegister);

 snd_iprintf(buffer, "%s (Card #%d) Rev.%x\n",
      hdspm->card_name, hdspm->card->number + 1,
      hdspm->firmware_rev);

 snd_iprintf(buffer, "IRQ: %d Registers bus: 0x%lx VM: 0x%lx\n",
      hdspm->irq, hdspm->port, (unsigned long)hdspm->iobase);

 snd_iprintf(buffer, "--- System ---\n");

 snd_iprintf(buffer,
      "IRQ Pending: Audio=%d, MIDI0=%d, MIDI1=%d, IRQcount=%d\n",
      status & HDSPM_audioIRQPending,
      (status & HDSPM_midi0IRQPending) ? 1 : 0,
      (status & HDSPM_midi1IRQPending) ? 1 : 0,
      hdspm->irq_count);
 snd_iprintf(buffer,
      "HW pointer: id = %d, rawptr = %d (%d->%d) "
      "estimated= %ld (bytes)\n",
      ((status & HDSPM_BufferID) ? 1 : 0),
      (status & HDSPM_BufferPositionMask),
      (status & HDSPM_BufferPositionMask) %
      (2 * (int)hdspm->period_bytes),
      ((status & HDSPM_BufferPositionMask) - 64) %
      (2 * (int)hdspm->period_bytes),
      (long) hdspm_hw_pointer(hdspm) * 4);

 snd_iprintf(buffer,
      "MIDI FIFO: Out1=0x%x, Out2=0x%x, In1=0x%x, In2=0x%x \n",
      hdspm_read(hdspm, HDSPM_midiStatusOut0) & 0xFF,
      hdspm_read(hdspm, HDSPM_midiStatusOut1) & 0xFF,
      hdspm_read(hdspm, HDSPM_midiStatusIn0) & 0xFF,
      hdspm_read(hdspm, HDSPM_midiStatusIn1) & 0xFF);
 snd_iprintf(buffer,
      "Register: ctrl1=0x%x, status1=0x%x, status2=0x%x, "
      "timecode=0x%x\n",
      hdspm->control_register,
      status, status2, timecode);

 snd_iprintf(buffer, "--- Settings ---\n");

 x = 1 << (6 + hdspm_decode_latency(hdspm->control_register &
        HDSPM_LatencyMask));

 snd_iprintf(buffer,
      "Size (Latency): %d samples (2 periods of %lu bytes)\n",
      x, (unsigned long) hdspm->period_bytes);

 snd_iprintf(buffer, "Line out: %s,   Precise Pointer: %s\n",
      (hdspm->
       control_register & HDSPM_LineOut) ? "on " : "off",
      (hdspm->precise_ptr) ? "on" : "off");

 snd_iprintf(buffer,
      "ClearTrackMarker %s, Emphasis %s, Dolby %s\n",
      (hdspm->
       control_register & HDSPM_clr_tms) ? "on" : "off",
      (hdspm->
       control_register & HDSPM_Emphasis) ? "on" : "off",
      (hdspm->
       control_register & HDSPM_Dolby) ? "on" : "off");

 switch (hdspm_clock_source(hdspm)) {
 case 137:
  clock_source = "AutoSync";
  break;
 case 133:
  clock_source = "Internal 32 kHz";
  break;
 case 132:
  clock_source = "Internal 44.1 kHz";
  break;
 case 131:
  clock_source = "Internal 48 kHz";
  break;
 case 130:
  clock_source = "Internal 64 kHz";
  break;
 case 129:
  clock_source = "Internal 88.2 kHz";
  break;
 case 128:
  clock_source = "Internal 96 kHz";
  break;
 case 136:
  clock_source = "Internal 128 kHz";
  break;
 case 135:
  clock_source = "Internal 176.4 kHz";
  break;
 case 134:
  clock_source = "Internal 192 kHz";
  break;
 default:
  clock_source = "Error";
 }
 snd_iprintf(buffer, "Sample Clock Source: %s\n", clock_source);
 if (!(hdspm->control_register & HDSPM_ClockModeMaster))
  system_clock_mode = "Slave";
 else
  system_clock_mode = "Master";
 snd_iprintf(buffer, "System Clock Mode: %s\n", system_clock_mode);

 pref_syncref = hdspm_pref_sync_ref(hdspm);
 if (pref_syncref == 0)
  snd_iprintf(buffer, "Preferred Sync Reference: Word Clock\n");
 else
  snd_iprintf(buffer, "Preferred Sync Reference: AES%d\n",
    pref_syncref);

 snd_iprintf(buffer, "System Clock Frequency: %d\n",
      hdspm->system_sample_rate);

 snd_iprintf(buffer, "Double speed: %s\n",
   hdspm->control_register & HDSPM_DS_DoubleWire?
   "Double wire" : "Single wire");
 snd_iprintf(buffer, "Quad speed: %s\n",
   hdspm->control_register & HDSPM_QS_DoubleWire?
   "Double wire" :
   hdspm->control_register & HDSPM_QS_QuadWire?
   "Quad wire" : "Single wire");

 snd_iprintf(buffer, "--- Status:\n");

 snd_iprintf(buffer, "Word: %s  Frequency: %d\n",
      (status & HDSPM_AES32_wcLock)? "Sync   " : "No Lock",
      HDSPM_bit2freq((status >> HDSPM_AES32_wcFreq_bit) & 0xF));

 for (x = 0; x < 8; x++) {
  snd_iprintf(buffer, "AES%d: %s  Frequency: %d\n",
       x+1,
       (status2 & (HDSPM_LockAES >> x)) ?
       "Sync   ": "No Lock",
       HDSPM_bit2freq((timecode >> (4*x)) & 0xF));
 }

 switch (hdspm_autosync_ref(hdspm)) {
 case 139: autosync_ref="None"; break;
 case 138: autosync_ref="Word Clock"; break;
 case 147: autosync_ref="AES1"; break;
 case 146: autosync_ref="AES2"; break;
 case 145: autosync_ref="AES3"; break;
 case 144: autosync_ref="AES4"; break;
 case 143: autosync_ref="AES5"; break;
 case 142: autosync_ref="AES6"; break;
 case 141: autosync_ref="AES7"; break;
 case 140: autosync_ref="AES8"; break;
 default: autosync_ref = "---"; break;
 }
 snd_iprintf(buffer, "AutoSync ref = %s\n", autosync_ref);

 snd_iprintf(buffer, "\n");
}
