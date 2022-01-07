
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {scalar_t__ is_aes32; } ;


 int HDSPM_AES32_AUTOSYNC_FROM_AES1 ;
 int HDSPM_AES32_AUTOSYNC_FROM_AES8 ;
 int HDSPM_AES32_AUTOSYNC_FROM_WORD ;
 unsigned int HDSPM_AES32_wcFreq_bit ;
 unsigned int HDSPM_AES32_wcLock ;
 int HDSPM_LockAES ;
 unsigned int HDSPM_SelSyncRef0 ;
 unsigned int HDSPM_SelSyncRefMask ;
 unsigned int HDSPM_SelSyncRef_WORD ;
 int HDSPM_bit2freq (unsigned int) ;
 unsigned int HDSPM_madiFreqMask ;
 unsigned int HDSPM_madiLock ;
 int HDSPM_statusRegister ;
 int HDSPM_statusRegister2 ;
 int HDSPM_timecodeRegister ;






 unsigned int HDSPM_wcFreqMask ;
 unsigned int HDSPM_wcLock ;
 int hdspm_autosync_ref (struct hdspm*) ;
 unsigned int hdspm_read (struct hdspm*,int ) ;

__attribute__((used)) static int hdspm_external_sample_rate(struct hdspm *hdspm)
{
 if (hdspm->is_aes32) {
  unsigned int status2 = hdspm_read(hdspm, HDSPM_statusRegister2);
  unsigned int status = hdspm_read(hdspm, HDSPM_statusRegister);
  unsigned int timecode =
   hdspm_read(hdspm, HDSPM_timecodeRegister);

  int syncref = hdspm_autosync_ref(hdspm);

  if (syncref == HDSPM_AES32_AUTOSYNC_FROM_WORD &&
    status & HDSPM_AES32_wcLock)
   return HDSPM_bit2freq((status >> HDSPM_AES32_wcFreq_bit)
           & 0xF);
  if (syncref >= HDSPM_AES32_AUTOSYNC_FROM_AES1 &&
   syncref <= HDSPM_AES32_AUTOSYNC_FROM_AES8 &&
   status2 & (HDSPM_LockAES >>
             (syncref - HDSPM_AES32_AUTOSYNC_FROM_AES1)))
   return HDSPM_bit2freq((timecode >>
     (4*(syncref-HDSPM_AES32_AUTOSYNC_FROM_AES1))) & 0xF);
  return 0;
 } else {
  unsigned int status2 = hdspm_read(hdspm, HDSPM_statusRegister2);
  unsigned int status = hdspm_read(hdspm, HDSPM_statusRegister);
  unsigned int rate_bits;
  int rate = 0;


  if ((status2 & HDSPM_wcLock) != 0 &&
    (status & HDSPM_SelSyncRef0) == 0) {

   rate_bits = status2 & HDSPM_wcFreqMask;

   switch (rate_bits) {
   case 133:
    rate = 32000;
    break;
   case 132:
    rate = 44100;
    break;
   case 131:
    rate = 48000;
    break;
   case 130:
    rate = 64000;
    break;
   case 129:
    rate = 88200;
    break;
   case 128:
    rate = 96000;
    break;

   default:
    rate = 0;
    break;
   }
  }




  if (rate != 0 &&
             (status2 & HDSPM_SelSyncRefMask) == HDSPM_SelSyncRef_WORD)
   return rate;


  if (status & HDSPM_madiLock) {
   rate_bits = status & HDSPM_madiFreqMask;

   switch (rate_bits) {
   case 139:
    rate = 32000;
    break;
   case 138:
    rate = 44100;
    break;
   case 137:
    rate = 48000;
    break;
   case 136:
    rate = 64000;
    break;
   case 135:
    rate = 88200;
    break;
   case 134:
    rate = 96000;
    break;
   case 142:
    rate = 128000;
    break;
   case 141:
    rate = 176400;
    break;
   case 140:
    rate = 192000;
    break;
   default:
    rate = 0;
    break;
   }
  }
  return rate;
 }
}
