
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {int (* board_set_vbus ) (struct musb*,int) ;} ;


 int stub1 (struct musb*,int) ;

__attribute__((used)) static inline void musb_set_vbus(struct musb *musb, int is_on)
{
 musb->board_set_vbus(musb, is_on);
}
