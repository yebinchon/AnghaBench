
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char UCHAR ;


 int TRUE ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int Config_FileGetParameter(UCHAR *string, UCHAR *dest,UCHAR *source)
{
  UCHAR buf1[100];
  int source_len = strlen(source);

    memset(buf1,0,100);
    strcat(buf1, string);
    strcat(buf1, "=");
    source+=strlen(buf1);

   memcpy(dest,source,source_len-strlen(buf1));
 return TRUE;
}
