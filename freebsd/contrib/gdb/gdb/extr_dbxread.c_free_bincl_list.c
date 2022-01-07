
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int md; } ;


 int bincl_list ;
 scalar_t__ bincls_allocated ;
 int xmfree (int ,int ) ;

__attribute__((used)) static void
free_bincl_list (struct objfile *objfile)
{
  xmfree (objfile->md, bincl_list);
  bincls_allocated = 0;
}
