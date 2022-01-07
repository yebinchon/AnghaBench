
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AFLAG ;
 int DFLAG ;

 int address_mode ;
 int mode_64bit ;

__attribute__((used)) static const char *
prefix_name (int pref, int sizeflag)
{
  static const char *rexes [16] =
    {
      "rex",
      "rex.B",
      "rex.X",
      "rex.XB",
      "rex.R",
      "rex.RB",
      "rex.RX",
      "rex.RXB",
      "rex.W",
      "rex.WB",
      "rex.WX",
      "rex.WXB",
      "rex.WR",
      "rex.WRB",
      "rex.WRX",
      "rex.WRXB",
    };

  switch (pref)
    {

    case 0x40:
    case 0x41:
    case 0x42:
    case 0x43:
    case 0x44:
    case 0x45:
    case 0x46:
    case 0x47:
    case 0x48:
    case 0x49:
    case 0x4a:
    case 0x4b:
    case 0x4c:
    case 0x4d:
    case 0x4e:
    case 0x4f:
      return rexes [pref - 0x40];
    case 0xf3:
      return "repz";
    case 0xf2:
      return "repnz";
    case 0xf0:
      return "lock";
    case 0x2e:
      return "cs";
    case 0x36:
      return "ss";
    case 0x3e:
      return "ds";
    case 0x26:
      return "es";
    case 0x64:
      return "fs";
    case 0x65:
      return "gs";
    case 0x66:
      return (sizeflag & DFLAG) ? "data16" : "data32";
    case 0x67:
      if (address_mode == mode_64bit)
 return (sizeflag & AFLAG) ? "addr32" : "addr64";
      else
 return (sizeflag & AFLAG) ? "addr16" : "addr32";
    case 128:
      return "fwait";
    default:
      return ((void*)0);
    }
}
