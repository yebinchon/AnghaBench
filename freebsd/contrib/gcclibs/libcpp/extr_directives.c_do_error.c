
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpp_reader ;


 int CPP_DL_ERROR ;
 int do_diagnostic (int *,int ,int) ;

__attribute__((used)) static void
do_error (cpp_reader *pfile)
{
  do_diagnostic (pfile, CPP_DL_ERROR, 1);
}
