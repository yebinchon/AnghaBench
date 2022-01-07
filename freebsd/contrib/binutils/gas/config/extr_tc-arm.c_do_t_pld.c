
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int encode_thumb32_addr_mode (int ,int ,int ) ;

__attribute__((used)) static void
do_t_pld (void)
{
  encode_thumb32_addr_mode (0, FALSE, FALSE);
}
