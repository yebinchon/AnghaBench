
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sb_devc ;


 int RECORD_SRC ;
 int sb_getmixer (int *,int ) ;
 int sb_setmixer (int *,int ,int) ;

__attribute__((used)) static void set_recsrc(sb_devc * devc, int src)
{
 sb_setmixer(devc, RECORD_SRC, (sb_getmixer(devc, RECORD_SRC) & ~7) | (src & 0x7));
}
