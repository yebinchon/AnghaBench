
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_setshow_cmd (char*,int ,int ,int *,char*,char*,int *,int *,int *,int *) ;
 int class_support ;
 int setlist ;
 int showlist ;
 int stop_whining ;
 int var_zinteger ;

void
_initialize_complaints (void)
{
  add_setshow_cmd ("complaints", class_support, var_zinteger,
     &stop_whining,
     "Set max number of complaints about incorrect symbols.",
     "Show max number of complaints about incorrect symbols.",
     ((void*)0), ((void*)0),
     &setlist, &showlist);

}
