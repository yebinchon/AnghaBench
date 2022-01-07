
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tmpbuffer ;
typedef int UCHAR ;
struct TYPE_5__ {int ZoneType; int eAuthenMode; int eEncryptionStatus; } ;
struct TYPE_6__ {TYPE_1__ config_file; } ;
typedef TYPE_2__* PSDevice ;


 scalar_t__ Config_FileGetParameter (char*,int *,int *) ;
 int * Config_FileOperation (TYPE_2__*) ;
 scalar_t__ TRUE ;
 int ZoneType_Europe ;
 int ZoneType_Japan ;
 int ZoneType_USA ;
 int kfree (int *) ;
 scalar_t__ memcmp (int *,char*,int) ;
 int memset (int *,int ,int) ;
 int printk (char*,int *) ;
 scalar_t__ simple_strtol (int *,int *,int) ;

__attribute__((used)) static int Read_config_file(PSDevice pDevice) {
  int result=0;
  UCHAR tmpbuffer[100];
  UCHAR *buffer=((void*)0);


 pDevice->config_file.ZoneType = -1;
 pDevice->config_file.eAuthenMode = -1;
 pDevice->config_file.eEncryptionStatus = -1;

  if((buffer=Config_FileOperation(pDevice)) ==((void*)0)) {
     result =-1;
     return result;
  }


{
    memset(tmpbuffer,0,sizeof(tmpbuffer));
    if(Config_FileGetParameter("ZONETYPE",tmpbuffer,buffer) ==TRUE) {
    if(memcmp(tmpbuffer,"USA",3)==0) {
      pDevice->config_file.ZoneType=ZoneType_USA;
    }
    else if(memcmp(tmpbuffer,"JAPAN",5)==0) {
      pDevice->config_file.ZoneType=ZoneType_Japan;
    }
    else if(memcmp(tmpbuffer,"EUROPE",6)==0) {
     pDevice->config_file.ZoneType=ZoneType_Europe;
    }
    else {
      printk("Unknown Zonetype[%s]?\n",tmpbuffer);
   }
 }
}



  {
 memset(tmpbuffer,0,sizeof(tmpbuffer));
       if(Config_FileGetParameter("AUTHENMODE",tmpbuffer,buffer)==TRUE) {
  pDevice->config_file.eAuthenMode = (int) simple_strtol(tmpbuffer, ((void*)0), 10);
       }

 memset(tmpbuffer,0,sizeof(tmpbuffer));
       if(Config_FileGetParameter("ENCRYPTIONMODE",tmpbuffer,buffer)==TRUE) {
  pDevice->config_file.eEncryptionStatus= (int) simple_strtol(tmpbuffer, ((void*)0), 10);
       }
  }


  kfree(buffer);
  return result;
}
