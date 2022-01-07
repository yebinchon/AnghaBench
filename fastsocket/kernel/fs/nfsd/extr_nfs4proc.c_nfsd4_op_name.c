
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* op_name; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* nfsd4_ops ;

__attribute__((used)) static const char *nfsd4_op_name(unsigned opnum)
{
 if (opnum < ARRAY_SIZE(nfsd4_ops))
  return nfsd4_ops[opnum].op_name;
 return "unknown_operation";
}
