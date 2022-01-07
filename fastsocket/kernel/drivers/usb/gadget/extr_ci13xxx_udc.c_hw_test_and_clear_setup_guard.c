
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAP_USBCMD ;
 int USBCMD_SUTW ;
 int hw_ctest_and_write (int ,int ,int ) ;

__attribute__((used)) static int hw_test_and_clear_setup_guard(void)
{
 return hw_ctest_and_write(CAP_USBCMD, USBCMD_SUTW, 0);
}
