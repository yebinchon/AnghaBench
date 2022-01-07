
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;


 int FALSE ;
 int TRUE ;
 int* kstrstr (int*,...) ;
 scalar_t__ memcmp (int*,char*,int) ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int strcat (int*,...) ;
 int strcpy (int*,int*) ;
 int strlen (int*) ;

__attribute__((used)) static int Config_FileGetParameter(UCHAR *string, UCHAR *dest,UCHAR *source)
{
  UCHAR buf1[100];
  UCHAR buf2[100];
  UCHAR *start_p=((void*)0),*end_p=((void*)0),*tmp_p=((void*)0);
  int ii;

    memset(buf1,0,100);
    strcat(buf1, string);
    strcat(buf1, "=");
    source+=strlen(buf1);


    if((start_p = kstrstr(source,buf1))==((void*)0))
 return FALSE;


for(ii=1;;ii++) {
  if(memcmp(start_p-ii,"\n",1)==0)
      break;
  if(memcmp(start_p-ii,"#",1)==0)
      return FALSE;
}


     if((end_p = kstrstr(start_p,"\n"))==((void*)0)) {
          end_p=start_p+strlen(start_p);
       }

   memset(buf2,0,100);
   memcpy(buf2,start_p,end_p-start_p);
   buf2[end_p-start_p]='\0';


   if((start_p = kstrstr(buf2,"="))==((void*)0))
      return FALSE;
   memset(buf1,0,100);
   strcpy(buf1,start_p+1);


  tmp_p = buf1;
  while(*tmp_p != 0x00) {
   if(*tmp_p==' ')
     tmp_p++;
         else
   break;
  }

   memcpy(dest,tmp_p,strlen(tmp_p));
 return TRUE;
}
