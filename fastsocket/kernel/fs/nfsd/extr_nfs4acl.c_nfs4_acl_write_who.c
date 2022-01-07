
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int stringlen; int string; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int BUG () ;
 int memcpy (char*,int ,int) ;
 TYPE_1__* s2t_map ;

int
nfs4_acl_write_who(int who, char *p)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(s2t_map); i++) {
  if (s2t_map[i].type == who) {
   memcpy(p, s2t_map[i].string, s2t_map[i].stringlen);
   return s2t_map[i].stringlen;
  }
 }
 BUG();
 return -1;
}
