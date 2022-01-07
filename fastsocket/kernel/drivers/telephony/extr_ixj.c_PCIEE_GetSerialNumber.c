
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef int DWORD ;


 scalar_t__ PCIEE_ReadWord (int,int,int*) ;

__attribute__((used)) static DWORD PCIEE_GetSerialNumber(WORD wAddress)
{
 WORD wLo, wHi;
 if (PCIEE_ReadWord(wAddress, 62, &wLo))
  return 0;
 if (PCIEE_ReadWord(wAddress, 63, &wHi))
  return 0;
 return (((DWORD) wHi << 16) | wLo);
}
