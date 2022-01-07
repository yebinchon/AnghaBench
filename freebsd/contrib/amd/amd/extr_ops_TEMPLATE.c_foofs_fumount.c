
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mntfs ;


 int EPERM ;
 int XLOG_INFO ;
 int plog (int ,char*) ;

__attribute__((used)) static int
foofs_fumount(mntfs *mf)
{
  int error = 0;

  plog(XLOG_INFO, "entering foofs_fumount...");

  error = EPERM;
  return error;
}
