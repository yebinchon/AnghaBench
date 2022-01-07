
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct biv_entry {scalar_t__ regno; } ;
typedef int rtx ;


 scalar_t__ REGNO (int ) ;

__attribute__((used)) static int
biv_eq (const void *b, const void *r)
{
  return ((const struct biv_entry *) b)->regno == REGNO ((rtx) r);
}
