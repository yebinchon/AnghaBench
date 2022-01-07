
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ps_sh; } ;
typedef int PE_SecHdr ;
typedef TYPE_1__ PE_Scn ;


 int EINVAL ;
 int errno ;

PE_SecHdr *
pe_section_header(PE_Scn *ps)
{

 if (ps == ((void*)0)) {
  errno = EINVAL;
  return (((void*)0));
 }

 return (&ps->ps_sh);
}
