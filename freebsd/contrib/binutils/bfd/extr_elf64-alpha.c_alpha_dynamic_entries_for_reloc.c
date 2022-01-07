
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
alpha_dynamic_entries_for_reloc (int r_type, int dynamic, int shared)
{
  switch (r_type)
    {

    case 130:
      return (dynamic ? 2 : shared ? 1 : 0);
    case 129:
      return shared;
    case 133:
    case 134:
      return dynamic || shared;
    case 135:
      return dynamic;


    case 132:
    case 131:
    case 128:
      return dynamic || shared;



    default:
      return 0;
    }
}
