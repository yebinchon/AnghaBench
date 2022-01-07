
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef enum vers_op { ____Placeholder_vers_op } vers_op ;





 scalar_t__ NFSD_SUPPORTED_MINOR_VERSION ;

 scalar_t__ nfsd_supported_minorversion ;

int nfsd_minorversion(u32 minorversion, enum vers_op change)
{
 if (minorversion > NFSD_SUPPORTED_MINOR_VERSION)
  return -1;
 switch(change) {
 case 129:
  nfsd_supported_minorversion = minorversion;
  break;
 case 130:
  if (minorversion == 0)
   return -1;
  nfsd_supported_minorversion = minorversion - 1;
  break;
 case 128:
  return minorversion <= nfsd_supported_minorversion;
 case 131:
  return minorversion <= NFSD_SUPPORTED_MINOR_VERSION;
 }
 return 0;
}
