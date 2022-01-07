
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blacklist {int dummy; } ;


 int bl_destroy (struct blacklist*) ;

void
blacklist_close(struct blacklist *bl)
{
 bl_destroy(bl);
}
