
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hash_new () ;
 int tag_hash ;

__attribute__((used)) static void
tag_init (void)
{
  tag_hash = hash_new ();
}
