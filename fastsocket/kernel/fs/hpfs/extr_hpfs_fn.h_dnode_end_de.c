
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void hpfs_dirent ;
struct dnode {int first_free; } ;


 int CHKCOND (int,char*) ;

__attribute__((used)) static inline struct hpfs_dirent *dnode_end_de (struct dnode *dnode)
{
  CHKCOND(dnode->first_free>=0x14 && dnode->first_free<=0xa00,("HPFS: dnode_end_de: dnode->first_free = %d\n",(int)dnode->first_free));
  return (void *) dnode + dnode->first_free;
}
