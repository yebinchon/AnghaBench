
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct layout {unsigned int layout_id; TYPE_1__* codecs; } ;
struct TYPE_2__ {scalar_t__ name; } ;


 struct layout* layouts ;

__attribute__((used)) static struct layout *find_layout_by_id(unsigned int id)
{
 struct layout *l;

 l = layouts;
 while (l->codecs[0].name) {
  if (l->layout_id == id)
   return l;
  l++;
 }
 return ((void*)0);
}
