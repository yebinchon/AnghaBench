
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _Unwind_Context {int flags; } ;
typedef int _Unwind_Word ;


 int EXTENDED_CONTEXT_BIT ;

__attribute__((used)) static inline _Unwind_Word
_Unwind_IsExtendedContext (struct _Unwind_Context *context)
{
  return context->flags & EXTENDED_CONTEXT_BIT;
}
