
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct marker {int type; char* ref; int * next; int offset; } ;
struct data {int len; } ;
typedef enum markertype { ____Placeholder_markertype } markertype ;


 struct data data_append_markers (struct data,struct marker*) ;
 struct marker* xmalloc (int) ;

struct data data_add_marker(struct data d, enum markertype type, char *ref)
{
 struct marker *m;

 m = xmalloc(sizeof(*m));
 m->offset = d.len;
 m->type = type;
 m->ref = ref;
 m->next = ((void*)0);

 return data_append_markers(d, m);
}
