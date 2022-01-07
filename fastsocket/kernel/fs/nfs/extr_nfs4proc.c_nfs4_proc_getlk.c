
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_state {int inode; } ;
struct nfs4_exception {scalar_t__ retry; } ;
struct file_lock {int dummy; } ;


 int NFS_SERVER (int ) ;
 int _nfs4_proc_getlk (struct nfs4_state*,int,struct file_lock*) ;
 int nfs4_handle_exception (int ,int ,struct nfs4_exception*) ;

__attribute__((used)) static int nfs4_proc_getlk(struct nfs4_state *state, int cmd, struct file_lock *request)
{
 struct nfs4_exception exception = { };
 int err;

 do {
  err = nfs4_handle_exception(NFS_SERVER(state->inode),
    _nfs4_proc_getlk(state, cmd, request),
    &exception);
 } while (exception.retry);
 return err;
}
