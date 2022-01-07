
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int options; int caps; int acdirmax; int acdirmin; int acregmax; int acregmin; int wsize; int rsize; int flags; } ;



__attribute__((used)) static void nfs_server_copy_userdata(struct nfs_server *target, struct nfs_server *source)
{
 target->flags = source->flags;
 target->rsize = source->rsize;
 target->wsize = source->wsize;
 target->acregmin = source->acregmin;
 target->acregmax = source->acregmax;
 target->acdirmin = source->acdirmin;
 target->acdirmax = source->acdirmax;
 target->caps = source->caps;
 target->options = source->options;
}
