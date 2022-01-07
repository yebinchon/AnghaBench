
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int htab_t ;


 int htab_traverse (int ,int ,int ) ;
 int vars_clear (int ) ;
 int vars_copy_1 ;

__attribute__((used)) static void
vars_copy (htab_t dst, htab_t src)
{
  vars_clear (dst);
  htab_traverse (src, vars_copy_1, dst);
}
