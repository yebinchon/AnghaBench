
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int out_byte (int) ;

__attribute__((used)) static inline void
out_opcode (int opc)
{
  out_byte (opc);
}
