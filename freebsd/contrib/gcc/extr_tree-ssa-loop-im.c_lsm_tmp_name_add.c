
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_LSM_NAME_LENGTH ;
 scalar_t__ lsm_tmp_name ;
 int lsm_tmp_name_length ;
 int strcpy (scalar_t__,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void
lsm_tmp_name_add (const char *s)
{
  int l = strlen (s) + lsm_tmp_name_length;
  if (l > MAX_LSM_NAME_LENGTH)
    return;

  strcpy (lsm_tmp_name + lsm_tmp_name_length, s);
  lsm_tmp_name_length = l;
}
