
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fclose (scalar_t__) ;
 int sfn ;
 scalar_t__ sfp ;
 int unlink (int ) ;

void
quit(int n)
{
 if (sfp) {
  fclose(sfp);
  unlink(sfn);
 }
 exit(n);
}
