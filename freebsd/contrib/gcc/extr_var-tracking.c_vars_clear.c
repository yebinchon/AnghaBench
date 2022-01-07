
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int htab_t ;


 int htab_empty (int ) ;

__attribute__((used)) static void
vars_clear (htab_t vars)
{
  htab_empty (vars);
}
