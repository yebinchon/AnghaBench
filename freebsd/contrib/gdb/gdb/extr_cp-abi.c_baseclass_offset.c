
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type {int dummy; } ;
struct TYPE_2__ {int (* baseclass_offset ) (struct type*,int,char*,int ) ;} ;
typedef int CORE_ADDR ;


 TYPE_1__ current_cp_abi ;
 int error (char*) ;
 int stub1 (struct type*,int,char*,int ) ;

int
baseclass_offset (struct type *type, int index, char *valaddr,
    CORE_ADDR address)
{
  if (current_cp_abi.baseclass_offset == ((void*)0))
    error ("ABI doesn't define required function baseclass_offset");
  return (*current_cp_abi.baseclass_offset) (type, index, valaddr, address);
}
