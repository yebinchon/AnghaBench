
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_fh {scalar_t__* data; } ;


 int FILE_NRHASH ;
 int NFS2_FHSIZE ;

__attribute__((used)) static inline unsigned int file_hash(struct nfs_fh *f)
{
 unsigned int tmp=0;
 int i;
 for (i=0; i<NFS2_FHSIZE;i++)
  tmp += f->data[i];
 return tmp & (FILE_NRHASH - 1);
}
