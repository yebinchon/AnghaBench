
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int * ilebs; } ;


 int free_unused_idx_lebs (struct ubifs_info*) ;
 int kfree (int *) ;

__attribute__((used)) static int free_idx_lebs(struct ubifs_info *c)
{
 int err;

 err = free_unused_idx_lebs(c);
 kfree(c->ilebs);
 c->ilebs = ((void*)0);
 return err;
}
