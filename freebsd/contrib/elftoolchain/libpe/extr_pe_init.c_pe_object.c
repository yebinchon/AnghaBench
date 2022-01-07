
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pe_obj; } ;
typedef int PE_Object ;
typedef TYPE_1__ PE ;


 int EINVAL ;
 int PE_O_UNKNOWN ;
 int errno ;

PE_Object
pe_object(PE *pe)
{

 if (pe == ((void*)0)) {
  errno = EINVAL;
  return (PE_O_UNKNOWN);
 }

 return (pe->pe_obj);
}
