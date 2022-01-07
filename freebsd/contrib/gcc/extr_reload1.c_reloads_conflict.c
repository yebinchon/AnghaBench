
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum reload_type { ____Placeholder_reload_type } reload_type ;
struct TYPE_2__ {int when_needed; int opnum; } ;
 int gcc_unreachable () ;
 TYPE_1__* rld ;

__attribute__((used)) static int
reloads_conflict (int r1, int r2)
{
  enum reload_type r1_type = rld[r1].when_needed;
  enum reload_type r2_type = rld[r2].when_needed;
  int r1_opnum = rld[r1].opnum;
  int r2_opnum = rld[r2].opnum;


  if (r2_type == 128)
    return 1;



  switch (r1_type)
    {
    case 137:
      return (r2_type == 135
       || r2_type == 133
       || r2_type == 134
       || r2_type == 137
       || ((r2_type == 136
     || r2_type == 138)
    && r2_opnum > r1_opnum));

    case 136:
      return ((r2_type == 136 && r1_opnum == r2_opnum)
       || (r2_type == 137 && r2_opnum < r1_opnum));

    case 138:
      return ((r2_type == 138 && r1_opnum == r2_opnum)
       || (r2_type == 137 && r2_opnum < r1_opnum));

    case 129:
      return ((r2_type == 129 && r2_opnum == r1_opnum)
       || (r2_type == 130 && r2_opnum <= r1_opnum));

    case 131:
      return ((r2_type == 131 && r2_opnum == r1_opnum)
       || (r2_type == 130 && r2_opnum <= r1_opnum));

    case 133:
      return (r2_type == 137 || r2_type == 135
       || r2_type == 133);

    case 134:
      return (r2_type == 137
       || r2_type == 134);

    case 130:
      return (r2_type == 135 || r2_type == 130
       || ((r2_type == 129
     || r2_type == 131)
    && r2_opnum >= r1_opnum));

    case 135:
      return (r2_type == 137 || r2_type == 130
       || r2_type == 135
       || r2_type == 133);

    case 132:
      return r2_type == 132;

    case 128:
      return 1;

    default:
      gcc_unreachable ();
    }
}
