
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ai_family; } ;
struct mx_hostentry {int pref; TYPE_1__ ai; } ;



__attribute__((used)) static int
sort_pref(const void *a, const void *b)
{
 const struct mx_hostentry *ha = a, *hb = b;
 int v;


 v = ha->pref - hb->pref;
 if (v != 0)
  return (v);


 v = - (ha->ai.ai_family - hb->ai.ai_family);
 return (v);
}
