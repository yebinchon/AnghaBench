
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MAX_SCS_INCREMENT ;
 int current_max_scs ;
 int num_reallocs ;
 int reallocate_char_ptr_array (int ,int ) ;
 int reallocate_integer_array (int ,int ) ;
 int scbol ;
 int sceof ;
 int scname ;
 int scset ;
 int scxclu ;

void scextend ()
{
 current_max_scs += MAX_SCS_INCREMENT;

 ++num_reallocs;

 scset = reallocate_integer_array (scset, current_max_scs);
 scbol = reallocate_integer_array (scbol, current_max_scs);
 scxclu = reallocate_integer_array (scxclu, current_max_scs);
 sceof = reallocate_integer_array (sceof, current_max_scs);
 scname = reallocate_char_ptr_array (scname, current_max_scs);
}
