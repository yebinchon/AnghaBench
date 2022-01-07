
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_format ;





 scalar_t__ bfd_type_end ;
 scalar_t__ bfd_unknown ;

const char *
bfd_format_string (bfd_format format)
{
  if (((int) format < (int) bfd_unknown)
      || ((int) format >= (int) bfd_type_end))
    return "invalid";

  switch (format)
    {
    case 128:
      return "object";
    case 130:
      return "archive";
    case 129:
      return "core";
    default:
      return "unknown";
    }
}
