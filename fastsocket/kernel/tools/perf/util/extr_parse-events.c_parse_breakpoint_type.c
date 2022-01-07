
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int bp_type; } ;


 int CHECK_SET_TYPE (int) ;
 int EINVAL ;
 int HW_BREAKPOINT_R ;
 int HW_BREAKPOINT_W ;
 int HW_BREAKPOINT_X ;

__attribute__((used)) static int
parse_breakpoint_type(const char *type, struct perf_event_attr *attr)
{
 int i;

 for (i = 0; i < 3; i++) {
  if (!type || !type[i])
   break;
  switch (type[i]) {
  case 'r':
   do { if (attr->bp_type & HW_BREAKPOINT_R) return -EINVAL; else attr->bp_type |= HW_BREAKPOINT_R; } while (0);
   break;
  case 'w':
   do { if (attr->bp_type & HW_BREAKPOINT_W) return -EINVAL; else attr->bp_type |= HW_BREAKPOINT_W; } while (0);
   break;
  case 'x':
   do { if (attr->bp_type & HW_BREAKPOINT_X) return -EINVAL; else attr->bp_type |= HW_BREAKPOINT_X; } while (0);
   break;
  default:
   return -EINVAL;
  }
 }



 if (!attr->bp_type)
  attr->bp_type = HW_BREAKPOINT_R | HW_BREAKPOINT_W;

 return 0;
}
