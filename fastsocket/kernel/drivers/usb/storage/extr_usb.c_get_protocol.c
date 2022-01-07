
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {int subclass; char* protocol_name; void* proto_handler; int max_lun; } ;
 void* usb_stor_pad12_command ;
 void* usb_stor_transparent_scsi_command ;
 void* usb_stor_ufi_command ;

__attribute__((used)) static void get_protocol(struct us_data *us)
{
 switch (us->subclass) {
 case 130:
  us->protocol_name = "Reduced Block Commands (RBC)";
  us->proto_handler = usb_stor_transparent_scsi_command;
  break;

 case 133:
  us->protocol_name = "8020i";
  us->proto_handler = usb_stor_pad12_command;
  us->max_lun = 0;
  break;

 case 131:
  us->protocol_name = "QIC-157";
  us->proto_handler = usb_stor_pad12_command;
  us->max_lun = 0;
  break;

 case 132:
  us->protocol_name = "8070i";
  us->proto_handler = usb_stor_pad12_command;
  us->max_lun = 0;
  break;

 case 129:
  us->protocol_name = "Transparent SCSI";
  us->proto_handler = usb_stor_transparent_scsi_command;
  break;

 case 128:
  us->protocol_name = "Uniform Floppy Interface (UFI)";
  us->proto_handler = usb_stor_ufi_command;
  break;
 }
}
