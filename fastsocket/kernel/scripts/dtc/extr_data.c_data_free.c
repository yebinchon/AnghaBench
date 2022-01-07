
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct marker {struct marker* ref; struct marker* next; } ;
struct data {struct marker* val; struct marker* markers; } ;


 int free (struct marker*) ;

void data_free(struct data d)
{
 struct marker *m, *nm;

 m = d.markers;
 while (m) {
  nm = m->next;
  free(m->ref);
  free(m);
  m = nm;
 }

 if (d.val)
  free(d.val);
}
