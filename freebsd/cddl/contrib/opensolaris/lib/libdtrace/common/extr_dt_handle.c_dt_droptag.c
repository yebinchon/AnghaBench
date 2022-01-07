
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ dtrace_dropkind_t ;
struct TYPE_2__ {char const* dtdrg_tag; scalar_t__ dtdrg_kind; } ;


 TYPE_1__* _dt_droptags ;

__attribute__((used)) static const char *
dt_droptag(dtrace_dropkind_t kind)
{
 int i;

 for (i = 0; _dt_droptags[i].dtdrg_tag != ((void*)0); i++) {
  if (_dt_droptags[i].dtdrg_kind == kind)
   return (_dt_droptags[i].dtdrg_tag);
 }

 return ("DTRACEDROP_UNKNOWN");
}
