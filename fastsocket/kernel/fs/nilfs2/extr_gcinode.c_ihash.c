
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ino_t ;
typedef scalar_t__ __u64 ;


 int NILFS_GCINODE_HASH_BITS ;
 unsigned long hash_long (unsigned long,int ) ;

__attribute__((used)) static unsigned long ihash(ino_t ino, __u64 cno)
{
 return hash_long((unsigned long)((ino << 2) + cno),
    NILFS_GCINODE_HASH_BITS);
}
