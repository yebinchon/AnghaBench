
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fail (char const*,int ,char*) ;
 int strlen (char const*) ;

void
__chk_fail (void)
{
  const char *msg = "*** buffer overflow detected ***: ";
  fail (msg, strlen (msg), "buffer overflow detected: terminated");
}
