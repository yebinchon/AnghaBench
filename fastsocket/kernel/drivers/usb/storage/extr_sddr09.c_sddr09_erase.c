
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct us_data {unsigned char* iobuf; } ;


 unsigned char LSB_of (unsigned long) ;
 unsigned char LUNBITS ;
 unsigned char MSB_of (unsigned long) ;
 int US_DEBUGP (char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int sddr09_send_scsi_command (struct us_data*,unsigned char*,int) ;

__attribute__((used)) static int
sddr09_erase(struct us_data *us, unsigned long Eaddress) {
 unsigned char *command = us->iobuf;
 int result;

 US_DEBUGP("sddr09_erase: erase address %lu\n", Eaddress);

 memset(command, 0, 12);
 command[0] = 0xEA;
 command[1] = LUNBITS;
 command[6] = MSB_of(Eaddress>>16);
 command[7] = LSB_of(Eaddress>>16);
 command[8] = MSB_of(Eaddress & 0xFFFF);
 command[9] = LSB_of(Eaddress & 0xFFFF);

 result = sddr09_send_scsi_command(us, command, 12);

 if (result)
  US_DEBUGP("Result for send_control in sddr09_erase %d\n",
     result);

 return result;
}
