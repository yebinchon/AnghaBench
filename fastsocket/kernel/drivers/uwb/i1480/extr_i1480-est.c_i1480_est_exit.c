
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int i1480_CET_VS1 ;
 int i1480_est_fd00 ;
 int i1480_est_fd01 ;
 int uwb_est_unregister (int ,int,int,int,int ,int ) ;

__attribute__((used)) static void i1480_est_exit(void)
{
 uwb_est_unregister(i1480_CET_VS1, 0x00, 0x8086, 0x0c3b,
      i1480_est_fd00, ARRAY_SIZE(i1480_est_fd00));
 uwb_est_unregister(i1480_CET_VS1, 0x01, 0x8086, 0x0c3b,
      i1480_est_fd01, ARRAY_SIZE(i1480_est_fd01));
}
