
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int am_opts ;


 int XLOG_INFO ;
 int plog (int ,char*) ;

__attribute__((used)) static char *
foofs_match(am_opts *fo)
{
  char *cp = "fill this with a way to find the match";

  plog(XLOG_INFO, "entering foofs_match...");

  if (cp)
    return cp;

  return ((void*)0);
}
