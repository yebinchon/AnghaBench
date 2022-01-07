
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ProfileNameSpecifier ;







__attribute__((used)) static const char *getPNSStr(ProfileNameSpecifier PNS) {
  switch (PNS) {
  case 130:
    return "default setting";
  case 131:
    return "command line";
  case 129:
    return "environment variable";
  case 128:
    return "runtime API";
  default:
    return "Unknown";
  }
}
