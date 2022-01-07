
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int WDT_TIMEOUT_VAL ;
 int eurwdt_write_reg (int ,int ) ;

__attribute__((used)) static inline void eurwdt_set_timeout(int timeout)
{
 eurwdt_write_reg(WDT_TIMEOUT_VAL, (u8) timeout);
}
