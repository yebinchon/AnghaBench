
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pidfh {int dummy; } ;
typedef int pid_t ;


 scalar_t__ EEXIST ;
 int SIGHUP ;
 int _PATH_MOUNTDPID ;
 scalar_t__ errno ;
 int kill (int ,int ) ;
 struct pidfh* pidfile_open (int ,int,int *) ;
 int pidfile_remove (struct pidfh*) ;

__attribute__((used)) static void
restart_mountd(void)
{
 struct pidfh *pfh;
 pid_t mountdpid;

 pfh = pidfile_open(_PATH_MOUNTDPID, 0600, &mountdpid);
 if (pfh != ((void*)0)) {

  pidfile_remove(pfh);
  return;
 }
 if (errno != EEXIST) {

  return;
 }

 kill(mountdpid, SIGHUP);
}
