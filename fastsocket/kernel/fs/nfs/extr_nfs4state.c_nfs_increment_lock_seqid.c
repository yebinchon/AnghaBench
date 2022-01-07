
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_seqid {int dummy; } ;


 int nfs_increment_seqid (int,struct nfs_seqid*) ;

void nfs_increment_lock_seqid(int status, struct nfs_seqid *seqid)
{
 nfs_increment_seqid(status, seqid);
}
