
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zprop_source_t ;
struct TYPE_4__ {int cb_sources; int* cb_columns; char** cb_colwidths; scalar_t__ cb_scripted; int cb_type; scalar_t__ cb_first; } ;
typedef TYPE_1__ zprop_get_cbdata_t ;
typedef int buf ;



 int GET_COL_NONE ;




 int ZFS_GET_NCOLS ;






 int assert (int) ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,char const*) ;
 int zprop_print_headers (TYPE_1__*,int ) ;

void
zprop_print_one_property(const char *name, zprop_get_cbdata_t *cbp,
    const char *propname, const char *value, zprop_source_t sourcetype,
    const char *source, const char *recvd_value)
{
 int i;
 const char *str = ((void*)0);
 char buf[128];




 if ((sourcetype & cbp->cb_sources) == 0)
  return;

 if (cbp->cb_first)
  zprop_print_headers(cbp, cbp->cb_type);

 for (i = 0; i < ZFS_GET_NCOLS; i++) {
  switch (cbp->cb_columns[i]) {
  case 138:
   str = name;
   break;

  case 137:
   str = propname;
   break;

  case 134:
   str = value;
   break;

  case 135:
   switch (sourcetype) {
   case 130:
    str = "-";
    break;

   case 133:
    str = "default";
    break;

   case 131:
    str = "local";
    break;

   case 128:
    str = "temporary";
    break;

   case 132:
    (void) snprintf(buf, sizeof (buf),
        "inherited from %s", source);
    str = buf;
    break;
   case 129:
    str = "received";
    break;

   default:
    str = ((void*)0);
    assert(!"unhandled zprop_source_t");
   }
   break;

  case 136:
   str = (recvd_value == ((void*)0) ? "-" : recvd_value);
   break;

  default:
   continue;
  }

  if (cbp->cb_columns[i + 1] == GET_COL_NONE)
   (void) printf("%s", str);
  else if (cbp->cb_scripted)
   (void) printf("%s\t", str);
  else
   (void) printf("%-*s  ",
       cbp->cb_colwidths[cbp->cb_columns[i]],
       str);
 }

 (void) printf("\n");
}
