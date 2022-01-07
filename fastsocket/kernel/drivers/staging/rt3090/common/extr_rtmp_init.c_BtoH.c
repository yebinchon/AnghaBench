
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char UCHAR ;
typedef char STRING ;



UCHAR BtoH(STRING ch)
{
 if (ch >= '0' && ch <= '9') return (ch - '0');
 if (ch >= 'A' && ch <= 'F') return (ch - 'A' + 0xA);
 if (ch >= 'a' && ch <= 'f') return (ch - 'a' + 0xA);
 return(255);
}
