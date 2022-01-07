
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_key {int dummy; } ;


 unsigned long le_key_k_offset (int,struct reiserfs_key*) ;
 int le_key_version (struct reiserfs_key*) ;

__attribute__((used)) static int direct_is_left_mergeable(struct reiserfs_key *key,
        unsigned long bsize)
{
 int version = le_key_version(key);
 return ((le_key_k_offset(version, key) & (bsize - 1)) != 1);
}
