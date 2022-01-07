
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t ps_ndx; } ;
typedef TYPE_1__ PE_Scn ;


 int EINVAL ;
 int errno ;

size_t
pe_ndxscn(PE_Scn *ps)
{

 if (ps == ((void*)0)) {
  errno = EINVAL;
  return (0);
 }

 return (ps->ps_ndx);
}
