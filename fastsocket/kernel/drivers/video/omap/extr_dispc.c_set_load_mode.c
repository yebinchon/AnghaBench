
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int) ;
 int DISPC_CONFIG ;
 int DISPC_LOAD_CLUT_ONCE_FRAME ;
 int DISPC_LOAD_CLUT_ONLY ;
 int DISPC_LOAD_FRAME_ONLY ;
 int MOD_REG_FLD (int ,int,int) ;

__attribute__((used)) static void set_load_mode(int mode)
{
 BUG_ON(mode & ~(DISPC_LOAD_CLUT_ONLY | DISPC_LOAD_FRAME_ONLY |
   DISPC_LOAD_CLUT_ONCE_FRAME));
 MOD_REG_FLD(DISPC_CONFIG, 0x03 << 1, mode << 1);
}
