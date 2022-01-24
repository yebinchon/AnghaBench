#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmpbuffer ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_5__ {int ZoneType; int eAuthenMode; int eEncryptionStatus; } ;
struct TYPE_6__ {TYPE_1__ config_file; } ;
typedef  TYPE_2__* PSDevice ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*) ; 
 scalar_t__ TRUE ; 
 int ZoneType_Europe ; 
 int ZoneType_Japan ; 
 int ZoneType_USA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(PSDevice pDevice) {
  int result=0;
  UCHAR      tmpbuffer[100];
  UCHAR *buffer=NULL;

  //init config setting
 pDevice->config_file.ZoneType = -1;
 pDevice->config_file.eAuthenMode = -1;
 pDevice->config_file.eEncryptionStatus = -1;

  if((buffer=FUNC1(pDevice)) ==NULL) {
     result =-1;
     return result;
  }

//get zonetype
{
    FUNC4(tmpbuffer,0,sizeof(tmpbuffer));
    if(FUNC0("ZONETYPE",tmpbuffer,buffer) ==TRUE) {
    if(FUNC3(tmpbuffer,"USA",3)==0) {
      pDevice->config_file.ZoneType=ZoneType_USA;
    }
    else if(FUNC3(tmpbuffer,"JAPAN",5)==0) {
      pDevice->config_file.ZoneType=ZoneType_Japan;
    }
    else if(FUNC3(tmpbuffer,"EUROPE",6)==0) {
     pDevice->config_file.ZoneType=ZoneType_Europe;
    }
    else {
      FUNC5("Unknown Zonetype[%s]?\n",tmpbuffer);
   }
 }
}

#if 1
//get other parameter
  {
	FUNC4(tmpbuffer,0,sizeof(tmpbuffer));
       if(FUNC0("AUTHENMODE",tmpbuffer,buffer)==TRUE) {
	 pDevice->config_file.eAuthenMode = (int) FUNC6(tmpbuffer, NULL, 10);
       }

	FUNC4(tmpbuffer,0,sizeof(tmpbuffer));
       if(FUNC0("ENCRYPTIONMODE",tmpbuffer,buffer)==TRUE) {
	 pDevice->config_file.eEncryptionStatus= (int) FUNC6(tmpbuffer, NULL, 10);
       }
  }
#endif

  FUNC2(buffer);
  return result;
}