
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int gen_lsm_tmp_name (int ) ;
 char* lsm_tmp_name ;
 int lsm_tmp_name_add (char*) ;
 scalar_t__ lsm_tmp_name_length ;

__attribute__((used)) static char *
get_lsm_tmp_name (tree ref)
{
  lsm_tmp_name_length = 0;
  gen_lsm_tmp_name (ref);
  lsm_tmp_name_add ("_lsm");
  return lsm_tmp_name;
}
