
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_CUT ;
 int M_DELETE ;
 int M_INSERT ;
 int M_PASTE ;
 int RFALSE (int,char*,int) ;

__attribute__((used)) static inline int old_entry_num(int is_affected, int virtual_entry_num,
    int pos_in_item, int mode)
{
 if (mode == M_INSERT || mode == M_DELETE)
  return virtual_entry_num;

 if (!is_affected)

  return virtual_entry_num;

 if (virtual_entry_num < pos_in_item)
  return virtual_entry_num;

 if (mode == M_CUT)
  return virtual_entry_num + 1;

 RFALSE(mode != M_PASTE || virtual_entry_num == 0,
        "vs-8015: old_entry_num: mode must be M_PASTE (mode = \'%c\'",
        mode);

 return virtual_entry_num - 1;
}
