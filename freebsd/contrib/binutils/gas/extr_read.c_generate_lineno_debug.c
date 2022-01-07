
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_type ;
 int ecoff_generate_asm_lineno () ;
 int stabs_generate_asm_lineno () ;

void
generate_lineno_debug (void)
{
  switch (debug_type)
    {
    case 128:
    case 130:
    case 133:
      break;
    case 129:
      stabs_generate_asm_lineno ();
      break;
    case 131:
      ecoff_generate_asm_lineno ();
      break;
    case 132:




      break;
    }
}
