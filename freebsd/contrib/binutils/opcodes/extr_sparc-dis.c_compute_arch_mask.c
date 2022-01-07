
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPARC_OPCODE_ARCH_MASK (int ) ;
 int SPARC_OPCODE_ARCH_SPARCLET ;
 int SPARC_OPCODE_ARCH_SPARCLITE ;
 int SPARC_OPCODE_ARCH_V8 ;
 int SPARC_OPCODE_ARCH_V9 ;
 int SPARC_OPCODE_ARCH_V9A ;
 int SPARC_OPCODE_ARCH_V9B ;
 int abort () ;
__attribute__((used)) static int
compute_arch_mask (unsigned long mach)
{
  switch (mach)
    {
    case 0 :
    case 137 :
      return SPARC_OPCODE_ARCH_MASK (SPARC_OPCODE_ARCH_V8);
    case 136 :
      return SPARC_OPCODE_ARCH_MASK (SPARC_OPCODE_ARCH_SPARCLET);
    case 135 :
    case 134 :



      return (SPARC_OPCODE_ARCH_MASK (SPARC_OPCODE_ARCH_SPARCLITE)
       | SPARC_OPCODE_ARCH_MASK (SPARC_OPCODE_ARCH_V8));
    case 133 :
    case 130 :
      return SPARC_OPCODE_ARCH_MASK (SPARC_OPCODE_ARCH_V9);
    case 132 :
    case 129 :
      return SPARC_OPCODE_ARCH_MASK (SPARC_OPCODE_ARCH_V9A);
    case 131 :
    case 128 :
      return SPARC_OPCODE_ARCH_MASK (SPARC_OPCODE_ARCH_V9B);
    }
  abort ();
}
