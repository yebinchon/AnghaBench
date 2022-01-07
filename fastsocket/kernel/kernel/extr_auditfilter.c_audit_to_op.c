
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;


 size_t Audit_bad ;
 size_t Audit_equal ;
 size_t* audit_ops ;

__attribute__((used)) static u32 audit_to_op(u32 op)
{
 u32 n;
 for (n = Audit_equal; n < Audit_bad && audit_ops[n] != op; n++)
  ;
 return n;
}
