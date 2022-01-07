
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u8 ;


 int CAP_PORTSC ;
 int EINVAL ;
 int PORTSC_PTC ;
 scalar_t__ const ffs_nr (int ) ;
 int hw_cwrite (int ,int ,scalar_t__ const) ;

__attribute__((used)) static int hw_port_test_set(u8 mode)
{
 const u8 TEST_MODE_MAX = 7;

 if (mode > TEST_MODE_MAX)
  return -EINVAL;

 hw_cwrite(CAP_PORTSC, PORTSC_PTC, mode << ffs_nr(PORTSC_PTC));
 return 0;
}
