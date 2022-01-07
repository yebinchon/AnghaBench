
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ g729_loaded; scalar_t__ ts85_loaded; } ;
struct TYPE_8__ {int low; } ;
struct TYPE_7__ {int low; } ;
struct TYPE_11__ {size_t caps; int cardtype; TYPE_4__* caplist; TYPE_3__ flags; TYPE_2__ dsp; TYPE_1__ ver; } ;
struct TYPE_10__ {int cap; int handle; void* captype; int desc; } ;
typedef TYPE_5__ IXJ ;


 int ALAW ;
 int G723_53 ;
 int G723_63 ;
 int G728 ;
 int G729 ;
 int G729B ;
 int LINEAR16 ;
 int LINEAR8 ;
 int PHONE_VENDOR_QUICKNET ;





 int TS41 ;
 int TS48 ;
 int TS85 ;
 int ULAW ;
 int WSS ;
 void* codec ;
 void* device ;
 int handset ;
 void* port ;
 int pots ;
 int pstn ;
 int speaker ;
 int strcpy (int ,char*) ;
 void* vendor ;

__attribute__((used)) static void add_caps(IXJ *j)
{
 j->caps = 0;
 j->caplist[j->caps].cap = PHONE_VENDOR_QUICKNET;
 strcpy(j->caplist[j->caps].desc, "Quicknet Technologies, Inc. (www.quicknet.net)");
 j->caplist[j->caps].captype = vendor;
 j->caplist[j->caps].handle = j->caps++;
 j->caplist[j->caps].captype = device;
 switch (j->cardtype) {
 case 130:
  strcpy(j->caplist[j->caps].desc, "Quicknet Internet PhoneJACK");
  break;
 case 132:
  strcpy(j->caplist[j->caps].desc, "Quicknet Internet LineJACK");
  break;
 case 129:
  strcpy(j->caplist[j->caps].desc, "Quicknet Internet PhoneJACK Lite");
  break;
 case 128:
  strcpy(j->caplist[j->caps].desc, "Quicknet Internet PhoneJACK PCI");
  break;
 case 131:
  strcpy(j->caplist[j->caps].desc, "Quicknet Internet PhoneCARD");
  break;
 }
 j->caplist[j->caps].cap = j->cardtype;
 j->caplist[j->caps].handle = j->caps++;
 strcpy(j->caplist[j->caps].desc, "POTS");
 j->caplist[j->caps].captype = port;
 j->caplist[j->caps].cap = pots;
 j->caplist[j->caps].handle = j->caps++;


 switch (j->cardtype) {
 case 130:
 case 132:
 case 128:
 case 131:
  strcpy(j->caplist[j->caps].desc, "SPEAKER");
  j->caplist[j->caps].captype = port;
  j->caplist[j->caps].cap = speaker;
  j->caplist[j->caps].handle = j->caps++;
        default:
       break;
 }


 switch (j->cardtype) {
 case 130:
  strcpy(j->caplist[j->caps].desc, "HANDSET");
  j->caplist[j->caps].captype = port;
  j->caplist[j->caps].cap = handset;
  j->caplist[j->caps].handle = j->caps++;
  break;
        default:
       break;
 }


 switch (j->cardtype) {
 case 132:
  strcpy(j->caplist[j->caps].desc, "PSTN");
  j->caplist[j->caps].captype = port;
  j->caplist[j->caps].cap = pstn;
  j->caplist[j->caps].handle = j->caps++;
  break;
        default:
       break;
 }


 strcpy(j->caplist[j->caps].desc, "ULAW");
 j->caplist[j->caps].captype = codec;
 j->caplist[j->caps].cap = ULAW;
 j->caplist[j->caps].handle = j->caps++;

 strcpy(j->caplist[j->caps].desc, "LINEAR 16 bit");
 j->caplist[j->caps].captype = codec;
 j->caplist[j->caps].cap = LINEAR16;
 j->caplist[j->caps].handle = j->caps++;

 strcpy(j->caplist[j->caps].desc, "LINEAR 8 bit");
 j->caplist[j->caps].captype = codec;
 j->caplist[j->caps].cap = LINEAR8;
 j->caplist[j->caps].handle = j->caps++;

 strcpy(j->caplist[j->caps].desc, "Windows Sound System");
 j->caplist[j->caps].captype = codec;
 j->caplist[j->caps].cap = WSS;
 j->caplist[j->caps].handle = j->caps++;


 strcpy(j->caplist[j->caps].desc, "ALAW");
 j->caplist[j->caps].captype = codec;
 j->caplist[j->caps].cap = ALAW;
 j->caplist[j->caps].handle = j->caps++;


 if (j->dsp.low != 0x20 || j->ver.low != 0x12) {
  strcpy(j->caplist[j->caps].desc, "G.723.1 6.3kbps");
  j->caplist[j->caps].captype = codec;
  j->caplist[j->caps].cap = G723_63;
  j->caplist[j->caps].handle = j->caps++;

  strcpy(j->caplist[j->caps].desc, "G.723.1 5.3kbps");
  j->caplist[j->caps].captype = codec;
  j->caplist[j->caps].cap = G723_53;
  j->caplist[j->caps].handle = j->caps++;

  strcpy(j->caplist[j->caps].desc, "TrueSpeech 4.8kbps");
  j->caplist[j->caps].captype = codec;
  j->caplist[j->caps].cap = TS48;
  j->caplist[j->caps].handle = j->caps++;

  strcpy(j->caplist[j->caps].desc, "TrueSpeech 4.1kbps");
  j->caplist[j->caps].captype = codec;
  j->caplist[j->caps].cap = TS41;
  j->caplist[j->caps].handle = j->caps++;
 }


 if (j->dsp.low == 0x20 || j->flags.ts85_loaded) {
  strcpy(j->caplist[j->caps].desc, "TrueSpeech 8.5kbps");
  j->caplist[j->caps].captype = codec;
  j->caplist[j->caps].cap = TS85;
  j->caplist[j->caps].handle = j->caps++;
 }


 if (j->dsp.low == 0x21) {
  strcpy(j->caplist[j->caps].desc, "G.728 16kbps");
  j->caplist[j->caps].captype = codec;
  j->caplist[j->caps].cap = G728;
  j->caplist[j->caps].handle = j->caps++;
 }


 if (j->dsp.low != 0x20 && j->flags.g729_loaded) {
  strcpy(j->caplist[j->caps].desc, "G.729A 8kbps");
  j->caplist[j->caps].captype = codec;
  j->caplist[j->caps].cap = G729;
  j->caplist[j->caps].handle = j->caps++;
 }
 if (j->dsp.low != 0x20 && j->flags.g729_loaded) {
  strcpy(j->caplist[j->caps].desc, "G.729B 8kbps");
  j->caplist[j->caps].captype = codec;
  j->caplist[j->caps].cap = G729B;
  j->caplist[j->caps].handle = j->caps++;
 }
}
