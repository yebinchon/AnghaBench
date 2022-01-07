
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h_source; } ;
struct bnep_session {int role; int state; int flags; TYPE_2__* dev; TYPE_1__ eh; } ;
struct bnep_conninfo {int role; int state; int flags; int device; int dst; } ;
struct TYPE_4__ {int name; } ;


 int ETH_ALEN ;
 int memcpy (int ,int ,int ) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void __bnep_copy_ci(struct bnep_conninfo *ci, struct bnep_session *s)
{
 memcpy(ci->dst, s->eh.h_source, ETH_ALEN);
 strcpy(ci->device, s->dev->name);
 ci->flags = s->flags;
 ci->state = s->state;
 ci->role = s->role;
}
