
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pool_state_t ;
 char const* gettext (char*) ;

const char *
zpool_pool_state_to_name(pool_state_t state)
{
 switch (state) {
 case 135:
  return (gettext("ACTIVE"));
 case 133:
  return (gettext("EXPORTED"));
 case 134:
  return (gettext("DESTROYED"));
 case 130:
  return (gettext("SPARE"));
 case 132:
  return (gettext("L2CACHE"));
 case 128:
  return (gettext("UNINITIALIZED"));
 case 129:
  return (gettext("UNAVAIL"));
 case 131:
  return (gettext("POTENTIALLY_ACTIVE"));
 }

 return (gettext("UNKNOWN"));
}
