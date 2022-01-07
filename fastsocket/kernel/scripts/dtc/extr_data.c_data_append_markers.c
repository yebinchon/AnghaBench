
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct marker {struct marker* next; } ;
struct data {struct marker* markers; } ;



__attribute__((used)) static struct data data_append_markers(struct data d, struct marker *m)
{
 struct marker **mp = &d.markers;


 while (*mp)
  mp = &((*mp)->next);
 *mp = m;
 return d;
}
