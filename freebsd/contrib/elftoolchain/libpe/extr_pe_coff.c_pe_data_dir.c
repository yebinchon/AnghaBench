
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pe_dd; } ;
typedef int PE_DataDir ;
typedef TYPE_1__ PE ;


 int ENOENT ;
 int errno ;

PE_DataDir *
pe_data_dir(PE *pe)
{

 if (pe->pe_dd == ((void*)0)) {
  errno = ENOENT;
  return (((void*)0));
 }

 return (pe->pe_dd);
}
