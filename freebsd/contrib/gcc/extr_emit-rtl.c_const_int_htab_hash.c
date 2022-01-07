
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int hashval_t ;


 int INTVAL (int ) ;

__attribute__((used)) static hashval_t
const_int_htab_hash (const void *x)
{
  return (hashval_t) INTVAL ((rtx) x);
}
