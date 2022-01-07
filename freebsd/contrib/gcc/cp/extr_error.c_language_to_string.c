
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum languages { ____Placeholder_languages } languages ;


 int gcc_unreachable () ;




const char *
language_to_string (enum languages c)
{
  switch (c)
    {
    case 130:
      return "C";

    case 129:
      return "C++";

    case 128:
      return "Java";

    default:
      gcc_unreachable ();
    }
  return ((void*)0);
}
