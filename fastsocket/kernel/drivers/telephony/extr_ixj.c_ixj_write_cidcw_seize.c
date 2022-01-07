
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IXJ ;


 int ixj_write_cid_bit (int *,int) ;

__attribute__((used)) static void ixj_write_cidcw_seize(IXJ *j)
{
 int cnt;

 for (cnt = 0; cnt < 80; cnt++) {
  ixj_write_cid_bit(j, 1);
 }
}
