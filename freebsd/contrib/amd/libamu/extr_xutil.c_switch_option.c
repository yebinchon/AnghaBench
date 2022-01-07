
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int EINVAL ;
 int XLOG_ERROR ;
 int XLOG_MANDATORY ;
 int cmdoption (char*,int ,int*) ;
 int plog (int ,char*) ;
 int xlog_level ;
 int xlog_opt ;

int
switch_option(char *opt)
{
  u_int xl = xlog_level;
  int rc = cmdoption(opt, xlog_opt, &xl);

  if (rc)
    return EINVAL;





  if ((xl & XLOG_MANDATORY) != XLOG_MANDATORY) {
    plog(XLOG_ERROR, "cannot turn off mandatory logging options");
    xl |= XLOG_MANDATORY;
  }
  if (xlog_level != xl)
    xlog_level = xl;
  return rc;
}
