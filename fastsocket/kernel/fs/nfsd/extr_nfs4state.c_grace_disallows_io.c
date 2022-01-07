
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;


 scalar_t__ locks_in_grace () ;
 scalar_t__ mandatory_lock (struct inode*) ;

__attribute__((used)) static inline int
grace_disallows_io(struct inode *inode)
{
 return locks_in_grace() && mandatory_lock(inode);
}
