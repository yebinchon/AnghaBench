
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callback_op {int dummy; } ;
typedef int __be32 ;


 int NFS4ERR_OP_ILLEGAL ;
 int NFS_OK ;


 struct callback_op* callback_ops ;
 int htonl (int ) ;

__attribute__((used)) static __be32
preprocess_nfs4_op(unsigned int op_nr, struct callback_op **op)
{
 switch (op_nr) {
 case 129:
 case 128:
  *op = &callback_ops[op_nr];
  break;
 default:
  return htonl(NFS4ERR_OP_ILLEGAL);
 }

 return htonl(NFS_OK);
}
