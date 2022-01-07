
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * cmdlist ;
 int * deletelist ;
 int * disablelist ;
 int * enablebreaklist ;
 int * enablelist ;
 int * infolist ;
 int * maintenanceinfolist ;
 int * maintenancelist ;
 int * maintenanceprintlist ;
 int max_user_call_depth ;
 int * setchecklist ;
 int * sethistlist ;
 int * setlist ;
 int * setprintlist ;
 int * showchecklist ;
 int * showhistlist ;
 int * showlist ;
 int * showprintlist ;
 int * stoplist ;
 int * togglelist ;
 int * unsethistlist ;
 int * unsetlist ;

void
init_cmd_lists (void)
{
  max_user_call_depth = 1024;

  cmdlist = ((void*)0);
  infolist = ((void*)0);
  enablelist = ((void*)0);
  disablelist = ((void*)0);
  togglelist = ((void*)0);
  stoplist = ((void*)0);
  deletelist = ((void*)0);
  enablebreaklist = ((void*)0);
  setlist = ((void*)0);
  unsetlist = ((void*)0);
  showlist = ((void*)0);
  sethistlist = ((void*)0);
  showhistlist = ((void*)0);
  unsethistlist = ((void*)0);
  maintenancelist = ((void*)0);
  maintenanceinfolist = ((void*)0);
  maintenanceprintlist = ((void*)0);
  setprintlist = ((void*)0);
  showprintlist = ((void*)0);
  setchecklist = ((void*)0);
  showchecklist = ((void*)0);
}
