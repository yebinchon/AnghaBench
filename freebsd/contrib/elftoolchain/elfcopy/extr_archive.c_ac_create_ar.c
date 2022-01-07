
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elfcopy {int dummy; } ;


 int ac_read_objs (struct elfcopy*,int) ;
 int ac_write_cleanup (struct elfcopy*) ;
 int ac_write_objs (struct elfcopy*,int) ;
 int sync_ar (struct elfcopy*) ;

void
ac_create_ar(struct elfcopy *ecp, int ifd, int ofd)
{

 ac_read_objs(ecp, ifd);
 sync_ar(ecp);
 ac_write_objs(ecp, ofd);
 ac_write_cleanup(ecp);
}
