
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ const INTVAL (int ) ;

__attribute__((used)) static int
const_int_htab_eq (const void *x, const void *y)
{
  return (INTVAL ((rtx) x) == *((const HOST_WIDE_INT *) y));
}
