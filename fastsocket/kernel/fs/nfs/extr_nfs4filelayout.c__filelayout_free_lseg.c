
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_filelayout_segment {int dummy; } ;


 int filelayout_free_fh_array (struct nfs4_filelayout_segment*) ;
 int kfree (struct nfs4_filelayout_segment*) ;

__attribute__((used)) static void
_filelayout_free_lseg(struct nfs4_filelayout_segment *fl)
{
 filelayout_free_fh_array(fl);
 kfree(fl);
}
