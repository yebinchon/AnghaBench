
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;



__attribute__((used)) static u8
rtl819x_evm_dbtopercentage(
    char value
    )
{
    char ret_val;

    ret_val = value;

    if(ret_val >= 0)
        ret_val = 0;
    if(ret_val <= -33)
        ret_val = -33;
    ret_val = 0 - ret_val;
    ret_val*=3;
 if(ret_val == 99)
  ret_val = 100;
    return(ret_val);
}
