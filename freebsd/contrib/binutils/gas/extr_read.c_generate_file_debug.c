
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DEBUG_STABS ;
 scalar_t__ debug_type ;
 int stabs_generate_asm_file () ;

__attribute__((used)) static void
generate_file_debug (void)
{
  if (debug_type == DEBUG_STABS)
    stabs_generate_asm_file ();
}
