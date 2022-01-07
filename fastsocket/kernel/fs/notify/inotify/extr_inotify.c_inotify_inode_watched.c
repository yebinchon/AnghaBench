
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int inotify_watches; } ;


 int list_empty (int *) ;

__attribute__((used)) static inline int inotify_inode_watched(struct inode *inode)
{
 return !list_empty(&inode->inotify_watches);
}
