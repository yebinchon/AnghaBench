
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_key {int dummy; } ;


 int reiserfs_warning (int *,char*,char*) ;

__attribute__((used)) static void errcatch_decrement_key(struct cpu_key *key)
{
 reiserfs_warning(((void*)0), "green-16002",
    "Invalid item type observed, run fsck ASAP");
}
