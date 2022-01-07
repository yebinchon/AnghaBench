
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfsic_dev_state {int dummy; } ;


 int GFP_NOFS ;
 int btrfsic_dev_state_init (struct btrfsic_dev_state*) ;
 struct btrfsic_dev_state* kzalloc (int,int ) ;

__attribute__((used)) static struct btrfsic_dev_state *btrfsic_dev_state_alloc(void)
{
 struct btrfsic_dev_state *ds;

 ds = kzalloc(sizeof(*ds), GFP_NOFS);
 if (((void*)0) != ds)
  btrfsic_dev_state_init(ds);

 return ds;
}
