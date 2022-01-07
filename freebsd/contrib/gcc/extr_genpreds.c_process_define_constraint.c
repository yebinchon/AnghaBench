
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ DEFINE_ADDRESS_CONSTRAINT ;
 scalar_t__ DEFINE_MEMORY_CONSTRAINT ;
 scalar_t__ GET_CODE (int ) ;
 int XEXP (int ,int) ;
 int XSTR (int ,int ) ;
 int add_constraint (int ,int ,int ,int,int,int) ;

__attribute__((used)) static void
process_define_constraint (rtx c, int lineno)
{
  add_constraint (XSTR (c, 0), 0, XEXP (c, 2),
    GET_CODE (c) == DEFINE_MEMORY_CONSTRAINT,
    GET_CODE (c) == DEFINE_ADDRESS_CONSTRAINT,
    lineno);
}
