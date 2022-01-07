
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int process_state_t ;
__attribute__((used)) static char *
get_printable_name_of_process_state (process_state_t process_state)
{
  switch (process_state)
    {
    case 129:
      return "STOPPED";
    case 132:
      return "FAKE_STEPPING";
    case 130:
      return "RUNNING";
    case 131:
      return "FORKING";
    case 128:
      return "VFORKING";
    default:
      return "?some unknown state?";
    }
}
