
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** h_errlist ;
 int h_nerr ;

const char *
gai_strerror(int e)
{

 if (e < 0 || e >= h_nerr)
  return ("unknown error");
 return (h_errlist[e]);
}
