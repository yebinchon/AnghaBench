
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int voidp ;
struct TYPE_3__ {scalar_t__ nentries; int * wildcard; scalar_t__ kvhash; } ;
typedef TYPE_1__ mnt_map ;


 int XFREE (int *) ;
 int mapc_clear_kvhash (scalar_t__) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void
mapc_clear(mnt_map *m)
{
  mapc_clear_kvhash(m->kvhash);




  memset((voidp) m->kvhash, 0, sizeof(m->kvhash));




  XFREE(m->wildcard);
  m->wildcard = ((void*)0);

  m->nentries = 0;
}
