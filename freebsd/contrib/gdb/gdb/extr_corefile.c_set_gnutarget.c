
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * gnutarget_string ;
 int * savestring (char*,int ) ;
 int set_gnutarget_command (int *,int ,int *) ;
 int strlen (char*) ;
 int xfree (int *) ;

void
set_gnutarget (char *newtarget)
{
  if (gnutarget_string != ((void*)0))
    xfree (gnutarget_string);
  gnutarget_string = savestring (newtarget, strlen (newtarget));
  set_gnutarget_command (((void*)0), 0, ((void*)0));
}
