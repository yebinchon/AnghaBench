
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char reg_pref ;
struct reg_info_data {struct reg_info_data* next; } ;


 int VEC_free (int ,int ,scalar_t__) ;
 int free (char*) ;
 int heap ;
 struct reg_info_data* reg_info_head ;
 int reg_info_p ;
 scalar_t__ reg_n_info ;
 scalar_t__ reg_n_max ;
 char* reg_pref_buffer ;
 scalar_t__ regno_allocated ;
 short* renumber ;

void
free_reg_info (void)
{
  if (reg_n_info)
    {
      struct reg_info_data *reg_data;
      struct reg_info_data *reg_next;

      VEC_free (reg_info_p, heap, reg_n_info);
      for (reg_data = reg_info_head; reg_data; reg_data = reg_next)
 {
   reg_next = reg_data->next;
   free ((char *) reg_data);
 }

      free (reg_pref_buffer);
      reg_pref_buffer = (struct reg_pref *) 0;
      reg_info_head = (struct reg_info_data *) 0;
      renumber = (short *) 0;
    }
  regno_allocated = 0;
  reg_n_max = 0;
}
