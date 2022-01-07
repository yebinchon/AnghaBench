
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;


 int ARRAY_SIZE (char const* const*) ;
const char *xenbus_strstate(enum xenbus_state state)
{
 static const char *const name[] = {
  [ 128 ] = "Unknown",
  [ 129 ] = "Initialising",
  [ 131 ] = "InitWait",
  [ 130 ] = "Initialised",
  [ 132 ] = "Connected",
  [ 133 ] = "Closing",
  [ 134 ] = "Closed",
 };
 return (state < ARRAY_SIZE(name)) ? name[state] : "INVALID";
}
