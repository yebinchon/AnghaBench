
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int am_node ;


 int EPERM ;
 int XLOG_INFO ;
 int plog (int ,char*) ;

__attribute__((used)) static int
foofs_mount(am_node *mp)
{
  int error = 0;

  plog(XLOG_INFO, "entering foofs_mount...");

  error = EPERM;
  return error;
}
