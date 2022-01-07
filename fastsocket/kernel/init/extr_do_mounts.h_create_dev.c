
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 int S_IFBLK ;
 int new_encode_dev (int ) ;
 int sys_mknod (char*,int,int ) ;
 int sys_unlink (char*) ;

__attribute__((used)) static inline int create_dev(char *name, dev_t dev)
{
 sys_unlink(name);
 return sys_mknod(name, S_IFBLK|0600, new_encode_dev(dev));
}
