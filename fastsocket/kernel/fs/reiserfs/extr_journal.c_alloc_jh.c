
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_jh {int dummy; } ;


 int GFP_NOFS ;
 int atomic_inc (int *) ;
 struct reiserfs_jh* kmalloc (int,int ) ;
 int nr_reiserfs_jh ;
 int yield () ;

__attribute__((used)) static struct reiserfs_jh *alloc_jh(void)
{
 struct reiserfs_jh *jh;
 while (1) {
  jh = kmalloc(sizeof(*jh), GFP_NOFS);
  if (jh) {
   atomic_inc(&nr_reiserfs_jh);
   return jh;
  }
  yield();
 }
}
