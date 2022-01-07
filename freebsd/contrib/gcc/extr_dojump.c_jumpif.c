
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int rtx ;


 int NULL_RTX ;
 int do_jump (int ,int ,int ) ;

void
jumpif (tree exp, rtx label)
{
  do_jump (exp, NULL_RTX, label);
}
