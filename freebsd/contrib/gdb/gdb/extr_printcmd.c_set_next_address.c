
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int builtin_type_void ;
 int lookup_internalvar (char*) ;
 int lookup_pointer_type (int ) ;
 int next_address ;
 int set_internalvar (int ,int ) ;
 int value_from_pointer (int ,int ) ;

void
set_next_address (CORE_ADDR addr)
{
  next_address = addr;


  set_internalvar (lookup_internalvar ("_"),
     value_from_pointer (lookup_pointer_type (builtin_type_void),
           addr));
}
