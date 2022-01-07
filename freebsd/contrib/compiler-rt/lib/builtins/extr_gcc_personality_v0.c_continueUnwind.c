
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Unwind_Exception {int dummy; } ;
struct _Unwind_Context {int dummy; } ;
typedef int _Unwind_Reason_Code ;


 int _URC_CONTINUE_UNWIND ;
 int _URC_FAILURE ;
 scalar_t__ _URC_OK ;
 scalar_t__ __gnu_unwind_frame (struct _Unwind_Exception*,struct _Unwind_Context*) ;

__attribute__((used)) static inline _Unwind_Reason_Code
continueUnwind(struct _Unwind_Exception *exceptionObject,
               struct _Unwind_Context *context) {






  return _URC_CONTINUE_UNWIND;
}
