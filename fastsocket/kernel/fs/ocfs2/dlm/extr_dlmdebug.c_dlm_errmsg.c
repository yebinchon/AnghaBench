
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dlm_status { ____Placeholder_dlm_status } dlm_status ;


 int DLM_MAXSTATS ;
 char const** dlm_errmsgs ;

const char *dlm_errmsg(enum dlm_status err)
{
 if (err >= DLM_MAXSTATS || err < 0)
  return dlm_errmsgs[DLM_MAXSTATS];
 return dlm_errmsgs[err];
}
