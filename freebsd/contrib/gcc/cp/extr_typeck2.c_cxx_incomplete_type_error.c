
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int cxx_incomplete_type_diagnostic (int ,int ,int ) ;

void
cxx_incomplete_type_error (tree value, tree type)
{
  cxx_incomplete_type_diagnostic (value, type, 0);
}
