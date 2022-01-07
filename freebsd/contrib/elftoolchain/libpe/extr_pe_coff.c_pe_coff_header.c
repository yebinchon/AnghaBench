
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pe_ch; } ;
typedef int PE_CoffHdr ;
typedef TYPE_1__ PE ;


 int ENOENT ;
 int errno ;

PE_CoffHdr *
pe_coff_header(PE *pe)
{

 if (pe->pe_ch == ((void*)0)) {
  errno = ENOENT;
  return (((void*)0));
 }

 return (pe->pe_ch);
}
