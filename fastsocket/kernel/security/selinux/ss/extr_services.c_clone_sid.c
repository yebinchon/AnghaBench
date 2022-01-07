
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sidtab {int dummy; } ;
struct context {int dummy; } ;


 int sidtab_insert (struct sidtab*,int ,struct context*) ;

__attribute__((used)) static int clone_sid(u32 sid,
       struct context *context,
       void *arg)
{
 struct sidtab *s = arg;

 return sidtab_insert(s, sid, context);
}
