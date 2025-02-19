
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char*) ;
 int fputs_filtered (char*,int ) ;
 int gdb_stderr ;
 int sprintf (char*,char*,int) ;

void
ocd_error (char *s, int error_code)
{
  char buf[100];

  fputs_filtered (s, gdb_stderr);
  fputs_filtered (" ", gdb_stderr);

  switch (error_code)
    {
    case 0x1:
      s = "Unknown fault";
      break;
    case 0x2:
      s = "Power failed";
      break;
    case 0x3:
      s = "Cable disconnected";
      break;
    case 0x4:
      s = "Couldn't enter OCD mode";
      break;
    case 0x5:
      s = "Target stuck in reset";
      break;
    case 0x6:
      s = "OCD hasn't been initialized";
      break;
    case 0x7:
      s = "Write verify failed";
      break;
    case 0x8:
      s = "Reg buff error (during MPC5xx fp reg read/write)";
      break;
    case 0x9:
      s = "Invalid CPU register access attempt failed";
      break;
    case 0x11:
      s = "Bus error";
      break;
    case 0x12:
      s = "Checksum error";
      break;
    case 0x13:
      s = "Illegal command";
      break;
    case 0x14:
      s = "Parameter error";
      break;
    case 0x15:
      s = "Internal error";
      break;
    case 0x80:
      s = "Flash erase error";
      break;
    default:
      sprintf (buf, "Unknown error code %d", error_code);
      s = buf;
    }

  error ("%s", s);
}
