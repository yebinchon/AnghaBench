
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpfs_dirent {int length; int down; } ;
typedef int dnode_secno ;


 int CHKCOND (int ,char*) ;

__attribute__((used)) static inline dnode_secno de_down_pointer (struct hpfs_dirent *de)
{
  CHKCOND(de->down,("HPFS: de_down_pointer: !de->down\n"));
  return *(dnode_secno *) ((void *) de + de->length - 4);
}
