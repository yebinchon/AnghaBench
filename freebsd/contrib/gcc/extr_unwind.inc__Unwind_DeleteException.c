
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Unwind_Exception {int (* exception_cleanup ) (int ,struct _Unwind_Exception*) ;} ;


 int _URC_FOREIGN_EXCEPTION_CAUGHT ;
 int stub1 (int ,struct _Unwind_Exception*) ;

void
_Unwind_DeleteException (struct _Unwind_Exception *exc)
{
  if (exc->exception_cleanup)
    (*exc->exception_cleanup) (_URC_FOREIGN_EXCEPTION_CAUGHT, exc);
}
