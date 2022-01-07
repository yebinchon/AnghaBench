
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uchar_t ;
struct TYPE_9__ {int * dmd_name; } ;
struct TYPE_7__ {TYPE_3__ dtu_members; } ;
struct TYPE_8__ {TYPE_1__ dtd_u; } ;
typedef TYPE_2__ ctf_dtdef_t ;
typedef TYPE_3__ ctf_dmdef_t ;


 int bcopy (int *,int *,size_t) ;
 TYPE_3__* ctf_list_next (TYPE_3__*) ;
 int strlen (int *) ;

__attribute__((used)) static uchar_t *
ctf_copy_membnames(ctf_dtdef_t *dtd, uchar_t *s)
{
 ctf_dmdef_t *dmd = ctf_list_next(&dtd->dtd_u.dtu_members);
 size_t len;

 for (; dmd != ((void*)0); dmd = ctf_list_next(dmd)) {
  if (dmd->dmd_name == ((void*)0))
   continue;
  len = strlen(dmd->dmd_name) + 1;
  bcopy(dmd->dmd_name, s, len);
  s += len;
 }

 return (s);
}
