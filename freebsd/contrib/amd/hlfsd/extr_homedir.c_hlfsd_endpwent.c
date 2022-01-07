
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (scalar_t__) ;
 scalar_t__ passwd_fp ;
 int passwdfile ;

__attribute__((used)) static void
hlfsd_endpwent(void)
{
  if (!passwdfile) {
    return;
  }

  if (passwd_fp) {
    fclose(passwd_fp);
  }
}
