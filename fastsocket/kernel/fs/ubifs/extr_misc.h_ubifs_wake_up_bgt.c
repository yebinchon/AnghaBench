
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int need_bgt; scalar_t__ bgt; } ;


 int wake_up_process (scalar_t__) ;

__attribute__((used)) static inline void ubifs_wake_up_bgt(struct ubifs_info *c)
{
 if (c->bgt && !c->need_bgt) {
  c->need_bgt = 1;
  wake_up_process(c->bgt);
 }
}
