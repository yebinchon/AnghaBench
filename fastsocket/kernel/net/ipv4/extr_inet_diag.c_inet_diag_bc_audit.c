
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inet_diag_bc_op {int code; int no; int yes; } ;


 int EINVAL ;
 int valid_cc (void const*,int,int ) ;

__attribute__((used)) static int inet_diag_bc_audit(const void *bytecode, int bytecode_len)
{
 const void *bc = bytecode;
 int len = bytecode_len;

 while (len > 0) {
  const struct inet_diag_bc_op *op = bc;


  switch (op->code) {
  case 136:
  case 130:
  case 135:
  case 129:
  case 128:
  case 134:
  case 133:
  case 132:
   if (op->no < 4 || op->no > len + 4 || op->no & 3)
    return -EINVAL;
   if (op->no < len &&
       !valid_cc(bytecode, bytecode_len, len - op->no))
    return -EINVAL;
   break;
  case 131:
   break;
  default:
   return -EINVAL;
  }
  if (op->yes < 4 || op->yes > len + 4 || op->yes & 3)
   return -EINVAL;
  bc += op->yes;
  len -= op->yes;
 }
 return len == 0 ? 0 : -EINVAL;
}
