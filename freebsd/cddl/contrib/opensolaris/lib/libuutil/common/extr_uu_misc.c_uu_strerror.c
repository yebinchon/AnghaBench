
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ESRCH ;
 int TEXT_DOMAIN ;
 char* dgettext (int ,char*) ;
 int errno ;

const char *
uu_strerror(uint32_t code)
{
 const char *str;

 switch (code) {
 case 135:
  str = dgettext(TEXT_DOMAIN, "No error");
  break;

 case 138:
  str = dgettext(TEXT_DOMAIN, "Invalid argument");
  break;

 case 128:
  str = dgettext(TEXT_DOMAIN, "Unknown flag passed");
  break;

 case 133:
  str = dgettext(TEXT_DOMAIN, "Out of memory");
  break;

 case 140:
  str = dgettext(TEXT_DOMAIN, "Callback-initiated failure");
  break;

 case 134:
  str = dgettext(TEXT_DOMAIN, "Operation not supported");
  break;

 case 139:
  str = dgettext(TEXT_DOMAIN, "No value provided");
  break;

 case 130:
  str = dgettext(TEXT_DOMAIN, "Value too small");
  break;

 case 132:
  str = dgettext(TEXT_DOMAIN, "Value too large");
  break;

 case 137:
  str = dgettext(TEXT_DOMAIN,
      "Value contains unexpected character");
  break;

 case 136:
  str = dgettext(TEXT_DOMAIN,
      "Value contains digit not in base");
  break;

 case 131:
  str = dgettext(TEXT_DOMAIN, "Underlying system error");
  break;

 case 129:
  str = dgettext(TEXT_DOMAIN, "Error status not known");
  break;

 default:
  errno = ESRCH;
  str = ((void*)0);
  break;
 }
 return (str);
}
