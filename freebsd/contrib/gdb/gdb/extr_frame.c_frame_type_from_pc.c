
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum frame_type { ____Placeholder_frame_type } frame_type ;
typedef int CORE_ADDR ;


 scalar_t__ DEPRECATED_PC_IN_CALL_DUMMY (int ,int ,int ) ;
 scalar_t__ DEPRECATED_USE_GENERIC_DUMMY_FRAMES ;
 int DUMMY_FRAME ;
 int NORMAL_FRAME ;
 scalar_t__ PC_IN_SIGTRAMP (int ,char*) ;
 int SIGTRAMP_FRAME ;
 int find_pc_partial_function (int ,char**,int *,int *) ;

__attribute__((used)) static enum frame_type
frame_type_from_pc (CORE_ADDR pc)
{




  if (DEPRECATED_USE_GENERIC_DUMMY_FRAMES
      && DEPRECATED_PC_IN_CALL_DUMMY (pc, 0, 0))
    return DUMMY_FRAME;
  else
    {
      char *name;
      find_pc_partial_function (pc, &name, ((void*)0), ((void*)0));
      if (PC_IN_SIGTRAMP (pc, name))
 return SIGTRAMP_FRAME;
      else
 return NORMAL_FRAME;
    }
}
