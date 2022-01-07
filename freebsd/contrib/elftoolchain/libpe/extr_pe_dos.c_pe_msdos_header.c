
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pe_dh; } ;
typedef int PE_DosHdr ;
typedef TYPE_1__ PE ;


 int EINVAL ;
 int ENOENT ;
 int errno ;

PE_DosHdr *
pe_msdos_header(PE *pe)
{

 if (pe == ((void*)0)) {
  errno = EINVAL;
  return (((void*)0));
 }

 if (pe->pe_dh == ((void*)0)) {
  errno = ENOENT;
  return (((void*)0));
 }

 return (pe->pe_dh);
}
