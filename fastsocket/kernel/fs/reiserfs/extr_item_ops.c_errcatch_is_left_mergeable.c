
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_key {int dummy; } ;


 int reiserfs_warning (int *,char*,char*) ;

__attribute__((used)) static int errcatch_is_left_mergeable(struct reiserfs_key *key,
          unsigned long bsize)
{
 reiserfs_warning(((void*)0), "green-16003",
    "Invalid item type observed, run fsck ASAP");
 return 0;
}
