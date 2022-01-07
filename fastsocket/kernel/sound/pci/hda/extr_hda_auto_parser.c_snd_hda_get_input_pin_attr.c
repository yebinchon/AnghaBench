
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AC_JACK_LOC_FRONT ;
 unsigned int AC_JACK_LOC_INTERNAL ;
 unsigned int AC_JACK_LOC_REAR ;
 unsigned int AC_JACK_LOC_SEPARATE ;
 unsigned int AC_JACK_PORT_BOTH ;
 unsigned int AC_JACK_PORT_FIXED ;
 unsigned int AC_JACK_PORT_NONE ;
 int INPUT_PIN_ATTR_DOCK ;
 int INPUT_PIN_ATTR_FRONT ;
 int INPUT_PIN_ATTR_INT ;
 int INPUT_PIN_ATTR_NORMAL ;
 int INPUT_PIN_ATTR_REAR ;
 int INPUT_PIN_ATTR_UNUSED ;
 unsigned int get_defcfg_connect (unsigned int) ;
 unsigned int get_defcfg_location (unsigned int) ;

int snd_hda_get_input_pin_attr(unsigned int def_conf)
{
 unsigned int loc = get_defcfg_location(def_conf);
 unsigned int conn = get_defcfg_connect(def_conf);
 if (conn == AC_JACK_PORT_NONE)
  return INPUT_PIN_ATTR_UNUSED;

 if (conn == AC_JACK_PORT_FIXED || conn == AC_JACK_PORT_BOTH)
  return INPUT_PIN_ATTR_INT;
 if ((loc & 0x30) == AC_JACK_LOC_INTERNAL)
  return INPUT_PIN_ATTR_INT;
 if ((loc & 0x30) == AC_JACK_LOC_SEPARATE)
  return INPUT_PIN_ATTR_DOCK;
 if (loc == AC_JACK_LOC_REAR)
  return INPUT_PIN_ATTR_REAR;
 if (loc == AC_JACK_LOC_FRONT)
  return INPUT_PIN_ATTR_FRONT;
 return INPUT_PIN_ATTR_NORMAL;
}
