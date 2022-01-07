
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESB_RELOAD_REG ;
 int ESB_UNLOCK1 ;
 int ESB_UNLOCK2 ;
 int writeb (int ,int ) ;

__attribute__((used)) static inline void esb_unlock_registers(void)
{
 writeb(ESB_UNLOCK1, ESB_RELOAD_REG);
 writeb(ESB_UNLOCK2, ESB_RELOAD_REG);
}
