
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode_defrag {scalar_t__ root; scalar_t__ ino; } ;



__attribute__((used)) static int __compare_inode_defrag(struct inode_defrag *defrag1,
      struct inode_defrag *defrag2)
{
 if (defrag1->root > defrag2->root)
  return 1;
 else if (defrag1->root < defrag2->root)
  return -1;
 else if (defrag1->ino > defrag2->ino)
  return 1;
 else if (defrag1->ino < defrag2->ino)
  return -1;
 else
  return 0;
}
