
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_watch {unsigned long ino; } ;



unsigned long audit_watch_inode(struct audit_watch *watch)
{
 return watch->ino;
}
