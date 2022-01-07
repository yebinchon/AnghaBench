
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct files_struct {int dummy; } ;
struct fdtable {int close_on_exec; } ;
struct TYPE_2__ {struct files_struct* files; } ;


 int FD_ISSET (unsigned int,int ) ;
 TYPE_1__* current ;
 struct fdtable* files_fdtable (struct files_struct*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int get_close_on_exec(unsigned int fd)
{
 struct files_struct *files = current->files;
 struct fdtable *fdt;
 int res;
 rcu_read_lock();
 fdt = files_fdtable(files);
 res = FD_ISSET(fd, fdt->close_on_exec);
 rcu_read_unlock();
 return res;
}
