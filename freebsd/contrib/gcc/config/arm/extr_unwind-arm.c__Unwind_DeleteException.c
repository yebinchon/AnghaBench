
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* exception_cleanup ) (int ,TYPE_1__*) ;} ;
typedef TYPE_1__ _Unwind_Exception ;


 int _URC_FOREIGN_EXCEPTION_CAUGHT ;
 int stub1 (int ,TYPE_1__*) ;

void
_Unwind_DeleteException (_Unwind_Exception * exc)
{
  if (exc->exception_cleanup)
    (*exc->exception_cleanup) (_URC_FOREIGN_EXCEPTION_CAUGHT, exc);
}
