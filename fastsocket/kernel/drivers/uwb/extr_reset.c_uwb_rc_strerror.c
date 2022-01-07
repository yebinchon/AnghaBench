
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARRAY_SIZE (char const**) ;
 char const** __strerror ;

const char *uwb_rc_strerror(unsigned code)
{
 if (code == 255)
  return "time out";
 if (code >= ARRAY_SIZE(__strerror))
  return "unknown error";
 return __strerror[code];
}
