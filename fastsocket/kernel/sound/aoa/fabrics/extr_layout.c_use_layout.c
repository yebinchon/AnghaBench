
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct layout {TYPE_1__* codecs; } ;
struct TYPE_2__ {scalar_t__ name; } ;


 int MAX_CODECS_PER_BUS ;
 int request_module (char*,scalar_t__) ;

__attribute__((used)) static void use_layout(struct layout *l)
{
 int i;

 for (i=0; i<MAX_CODECS_PER_BUS; i++) {
  if (l->codecs[i].name) {
   request_module("snd-aoa-codec-%s", l->codecs[i].name);
  }
 }

}
