
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AFLAG ;
 int OP_M (int,int) ;
 int PREFIX_ADDR ;
 int address_mode ;
 int close_char ;
 int* codep ;
 int mode_64bit ;
 char** names16 ;
 char const** names32 ;
 char const* obuf ;
 char* obufp ;
 char** op_out ;
 int open_char ;
 int prefixes ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int two_source_ops ;
 int used_prefixes ;

__attribute__((used)) static void
SVME_Fixup (int bytemode, int sizeflag)
{
  const char *alt;
  char *p;

  switch (*codep)
    {
    case 0xd8:
      alt = "vmrun";
      break;
    case 0xd9:
      alt = "vmmcall";
      break;
    case 0xda:
      alt = "vmload";
      break;
    case 0xdb:
      alt = "vmsave";
      break;
    case 0xdc:
      alt = "stgi";
      break;
    case 0xdd:
      alt = "clgi";
      break;
    case 0xde:
      alt = "skinit";
      break;
    case 0xdf:
      alt = "invlpga";
      break;
    default:
      OP_M (bytemode, sizeflag);
      return;
    }

  p = obuf + strlen (obuf) - 4;

  if (*p == 'i')
    --p;
  strcpy (p, alt);
  if (!(prefixes & PREFIX_ADDR))
    {
      ++codep;
      return;
    }
  used_prefixes |= PREFIX_ADDR;
  switch (*codep++)
    {
    case 0xdf:
      strcpy (op_out[1], names32[1]);
      two_source_ops = 1;

    case 0xd8:
    case 0xda:
    case 0xdb:
      *obufp++ = open_char;
      if (address_mode == mode_64bit || (sizeflag & AFLAG))
        alt = names32[0];
      else
        alt = names16[0];
      strcpy (obufp, alt);
      obufp += strlen (alt);
      *obufp++ = close_char;
      *obufp = '\0';
      break;
    }
}
