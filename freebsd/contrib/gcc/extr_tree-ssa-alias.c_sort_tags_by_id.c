
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_UID (int ) ;

__attribute__((used)) static int
sort_tags_by_id (const void *pa, const void *pb)
{
  tree a = *(tree *)pa;
  tree b = *(tree *)pb;

  return DECL_UID (a) - DECL_UID (b);
}
