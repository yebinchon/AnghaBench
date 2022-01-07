
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
typedef int DIE_REF ;


 int DIE_ID ;
 int DIE_NAME ;
 int bad_die_ref_complaint (int ,int ,int) ;
 int dbroff ;
 int numutypes ;
 struct type** utypes ;

__attribute__((used)) static struct type *
lookup_utype (DIE_REF die_ref)
{
  struct type *type = ((void*)0);
  int utypeidx;

  utypeidx = (die_ref - dbroff) / 4;
  if ((utypeidx < 0) || (utypeidx >= numutypes))
    {
      bad_die_ref_complaint (DIE_ID, DIE_NAME, die_ref);
    }
  else
    {
      type = *(utypes + utypeidx);
    }
  return (type);
}
