
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CAP_PORTSC ;
 int PORTSC_PTC ;
 int ffs_nr (int ) ;
 int hw_cread (int ,int ) ;

__attribute__((used)) static u8 hw_port_test_get(void)
{
 return hw_cread(CAP_PORTSC, PORTSC_PTC) >> ffs_nr(PORTSC_PTC);
}
