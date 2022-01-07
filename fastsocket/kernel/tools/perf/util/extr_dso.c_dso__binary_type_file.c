
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dso {char* long_name; int build_id; int has_build_id; int long_name_len; } ;
typedef enum dso_binary_type { ____Placeholder_dso_binary_type } dso_binary_type ;
struct TYPE_2__ {char* symfs; } ;


 int BUILD_ID_SIZE ;
 int build_id__sprintf (int ,int,char*) ;
 int * dso__build_id_filename (struct dso*,char*,size_t) ;
 int filename__read_debuglink (char*,char*,size_t) ;
 int snprintf (char*,size_t,char*,char*,char*,...) ;
 int strncpy (char*,char*,size_t) ;
 TYPE_1__ symbol_conf ;

int dso__binary_type_file(struct dso *dso, enum dso_binary_type type,
     char *root_dir, char *file, size_t size)
{
 char build_id_hex[BUILD_ID_SIZE * 2 + 1];
 int ret = 0;

 switch (type) {
 case 139: {
  char *debuglink;

  strncpy(file, dso->long_name, size);
  debuglink = file + dso->long_name_len;
  while (debuglink != file && *debuglink != '/')
   debuglink--;
  if (*debuglink == '/')
   debuglink++;
  filename__read_debuglink(dso->long_name, debuglink,
      size - (debuglink - file));
  }
  break;
 case 140:

  if (symbol_conf.symfs[0] ||
      (dso__build_id_filename(dso, file, size) == ((void*)0)))
   ret = -1;
  break;

 case 138:
  snprintf(file, size, "%s/usr/lib/debug%s.debug",
    symbol_conf.symfs, dso->long_name);
  break;

 case 129:
  snprintf(file, size, "%s/usr/lib/debug%s",
    symbol_conf.symfs, dso->long_name);
  break;

 case 141:
  if (!dso->has_build_id) {
   ret = -1;
   break;
  }

  build_id__sprintf(dso->build_id,
      sizeof(dso->build_id),
      build_id_hex);
  snprintf(file, size,
    "%s/usr/lib/debug/.build-id/%.2s/%s.debug",
    symbol_conf.symfs, build_id_hex, build_id_hex + 2);
  break;

 case 131:
  snprintf(file, size, "%s%s",
    symbol_conf.symfs, dso->long_name);
  break;

 case 136:
  snprintf(file, size, "%s%s%s", symbol_conf.symfs,
    root_dir, dso->long_name);
  break;

 case 130:
  snprintf(file, size, "%s%s", symbol_conf.symfs,
    dso->long_name);
  break;

 default:
 case 133:
 case 128:
 case 137:
 case 135:
 case 134:
 case 132:
  ret = -1;
  break;
 }

 return ret;
}
