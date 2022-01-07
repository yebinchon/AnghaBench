
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** insn_name_ptr ;
 int insn_name_ptr_size ;

const char *
get_insn_name (int code)
{
  if (code < insn_name_ptr_size)
    return insn_name_ptr[code];
  else
    return ((void*)0);
}
