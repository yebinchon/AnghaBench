
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int US_DEBUGP (char*,char const*) ;
 int US_DEBUGPX (char const*,...) ;
 char* scsi_extd_sense_format (unsigned char,unsigned char) ;
 char* scsi_sense_key_string (unsigned char) ;

void usb_stor_show_sense(
  unsigned char key,
  unsigned char asc,
  unsigned char ascq) {

 const char *what, *keystr;

 keystr = scsi_sense_key_string(key);
 what = scsi_extd_sense_format(asc, ascq);

 if (keystr == ((void*)0))
  keystr = "(Unknown Key)";
 if (what == ((void*)0))
  what = "(unknown ASC/ASCQ)";

 US_DEBUGP("%s: ", keystr);
 US_DEBUGPX(what, ascq);
 US_DEBUGPX("\n");
}
