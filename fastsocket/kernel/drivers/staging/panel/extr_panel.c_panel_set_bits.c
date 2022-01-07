
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_ctrl_bits () ;
 int set_data_bits () ;

__attribute__((used)) static void panel_set_bits(void)
{
 set_data_bits();
 set_ctrl_bits();
}
