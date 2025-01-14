
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stateid {scalar_t__ st_stateowner; int st_file; } ;
struct file {int dummy; } ;
typedef int fl_owner_t ;


 struct file* find_any_file (int ) ;
 int free_generic_stateid (struct nfs4_stateid*) ;
 int locks_remove_posix (struct file*,int ) ;
 int unhash_generic_stateid (struct nfs4_stateid*) ;

__attribute__((used)) static void release_lock_stateid(struct nfs4_stateid *stp)
{
 struct file *file;

 unhash_generic_stateid(stp);
 file = find_any_file(stp->st_file);
 if (file)
  locks_remove_posix(file, (fl_owner_t)stp->st_stateowner);
 free_generic_stateid(stp);
}
