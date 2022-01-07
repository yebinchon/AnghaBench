
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buff ;




 char* _ (char*) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
get_gnu_note_type (unsigned e_type)
{
  static char buff[64];

  switch (e_type)
    {
    case 129:
      return _("NT_GNU_ABI_TAG");
    case 128:
      return _("NT_GNU_BUILD_ID");
    }

  snprintf (buff, sizeof(buff), _("Unknown GNU note type: (0x%08x)"), e_type);
  return buff;
}
