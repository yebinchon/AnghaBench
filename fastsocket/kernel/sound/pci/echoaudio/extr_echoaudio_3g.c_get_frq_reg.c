
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct echoaudio {TYPE_1__* comm_page; } ;
struct TYPE_2__ {int e3g_frq_register; } ;


 int le32_to_cpu (int ) ;

__attribute__((used)) static inline u32 get_frq_reg(struct echoaudio *chip)
{
 return le32_to_cpu(chip->comm_page->e3g_frq_register);
}
