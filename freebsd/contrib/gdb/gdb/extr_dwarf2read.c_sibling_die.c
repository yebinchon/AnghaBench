
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct die_info {struct die_info* sibling; } ;



__attribute__((used)) static struct die_info *
sibling_die (struct die_info *die)
{
  return die->sibling;
}
