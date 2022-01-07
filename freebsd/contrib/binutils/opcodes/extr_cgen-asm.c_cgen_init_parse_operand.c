
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* parse_operand_fn ) (TYPE_1__*,int ,int *,int ,int ,int *,int *) ;} ;
typedef TYPE_1__* CGEN_CPU_DESC ;


 int CGEN_PARSE_OPERAND_INIT ;
 int stub1 (TYPE_1__*,int ,int *,int ,int ,int *,int *) ;

void
cgen_init_parse_operand (CGEN_CPU_DESC cd)
{

  (void) (* cd->parse_operand_fn)
    (cd, CGEN_PARSE_OPERAND_INIT, ((void*)0), 0, 0, ((void*)0), ((void*)0));
}
