
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int XSTR (int ,int) ;
 int add_constraint (int ,int ,int ,int,int,int) ;

__attribute__((used)) static void
process_define_register_constraint (rtx c, int lineno)
{
  add_constraint (XSTR (c, 0), XSTR (c, 1), 0, 0, 0, lineno);
}
