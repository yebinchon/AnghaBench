
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HOST_WIDE_INT ;


 int MAX_VAR_PARTS ;

__attribute__((used)) static inline bool
offset_valid_for_tracked_p (HOST_WIDE_INT offset)
{
  return (-MAX_VAR_PARTS < offset) && (offset < MAX_VAR_PARTS);
}
