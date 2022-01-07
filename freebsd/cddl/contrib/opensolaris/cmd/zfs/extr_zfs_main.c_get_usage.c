
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_help_t ;
 int abort () ;
 char const* gettext (char*) ;

__attribute__((used)) static const char *
get_usage(zfs_help_t idx)
{
 switch (idx) {
 case 155:
  return (gettext("\tclone [-p] [-o property=value] ... "
      "<snapshot> <filesystem|volume>\n"));
 case 154:
  return (gettext("\tcreate [-pu] [-o property=value] ... "
      "<filesystem>\n"
      "\tcreate [-ps] [-b blocksize] [-o property=value] ... "
      "-V <size> <volume>\n"));
 case 153:
  return (gettext("\tdestroy [-fnpRrv] <filesystem|volume>\n"
      "\tdestroy [-dnpRrv] "
      "<filesystem|volume>@<snap>[%<snap>][,...]\n"
      "\tdestroy <filesystem|volume>#<bookmark>\n"));
 case 151:
  return (gettext("\tget [-rHp] [-d max] "
      "[-o \"all\" | field[,...]]\n"
      "\t    [-t type[,...]] [-s source[,...]]\n"
      "\t    <\"all\" | property[,...]> "
      "[filesystem|volume|snapshot|bookmark] ...\n"));
 case 147:
  return (gettext("\tinherit [-rS] <property> "
      "<filesystem|volume|snapshot> ...\n"));
 case 129:
  return (gettext("\tupgrade [-v]\n"
      "\tupgrade [-r] [-V version] <-a | filesystem ...>\n"));
 case 146:
  return (gettext("\tjail <jailid|jailname> <filesystem>\n"));
 case 132:
  return (gettext("\tunjail <jailid|jailname> <filesystem>\n"));
 case 145:
  return (gettext("\tlist [-Hp] [-r|-d max] [-o property[,...]] "
      "[-s property]...\n\t    [-S property]... [-t type[,...]] "
      "[filesystem|volume|snapshot] ...\n"));
 case 144:
  return (gettext("\tmount\n"
      "\tmount [-vO] [-o opts] <-a | filesystem>\n"));
 case 143:
  return (gettext("\tpromote <clone-filesystem>\n"));
 case 142:
  return (gettext("\treceive|recv [-vnsFu] <filesystem|volume|"
      "snapshot>\n"
      "\treceive|recv [-vnsFu] [-o origin=<snapshot>] [-d | -e] "
      "<filesystem>\n"
      "\treceive|recv -A <filesystem|volume>\n"));
 case 139:
  return (gettext("\trename [-f] <filesystem|volume|snapshot> "
      "<filesystem|volume|snapshot>\n"
      "\trename [-f] -p <filesystem|volume> <filesystem|volume>\n"
      "\trename -r <snapshot> <snapshot>\n"
      "\trename <bookmark> <bookmark>\n"
      "\trename -u [-p] <filesystem> <filesystem>"));
 case 138:
  return (gettext("\trollback [-rRf] <snapshot>\n"));
 case 137:
  return (gettext("\tsend [-DnPpRvLec] [-[iI] snapshot] "
      "<snapshot>\n"
      "\tsend [-LPcenv] [-i snapshot|bookmark] "
      "<filesystem|volume|snapshot>\n"
      "\tsend [-nvPe] -t <receive_resume_token>\n"));
 case 136:
  return (gettext("\tset <property=value> ... "
      "<filesystem|volume|snapshot> ...\n"));
 case 135:
  return (gettext("\tshare <-a | filesystem>\n"));
 case 134:
  return (gettext("\tsnapshot|snap [-r] [-o property=value] ... "
      "<filesystem|volume>@<snap> ...\n"));
 case 131:
  return (gettext("\tunmount|umount [-f] "
      "<-a | filesystem|mountpoint>\n"));
 case 130:
  return (gettext("\tunshare "
      "<-a | filesystem|mountpoint>\n"));
 case 158:
  return (gettext("\tallow <filesystem|volume>\n"
      "\tallow [-ldug] "
      "<\"everyone\"|user|group>[,...] <perm|@setname>[,...]\n"
      "\t    <filesystem|volume>\n"
      "\tallow [-ld] -e <perm|@setname>[,...] "
      "<filesystem|volume>\n"
      "\tallow -c <perm|@setname>[,...] <filesystem|volume>\n"
      "\tallow -s @setname <perm|@setname>[,...] "
      "<filesystem|volume>\n"));
 case 133:
  return (gettext("\tunallow [-rldug] "
      "<\"everyone\"|user|group>[,...]\n"
      "\t    [<perm|@setname>[,...]] <filesystem|volume>\n"
      "\tunallow [-rld] -e [<perm|@setname>[,...]] "
      "<filesystem|volume>\n"
      "\tunallow [-r] -c [<perm|@setname>[,...]] "
      "<filesystem|volume>\n"
      "\tunallow [-r] -s @setname [<perm|@setname>[,...]] "
      "<filesystem|volume>\n"));
 case 128:
  return (gettext("\tuserspace [-Hinp] [-o field[,...]] "
      "[-s field] ...\n"
      "\t    [-S field] ... [-t type[,...]] "
      "<filesystem|snapshot>\n"));
 case 150:
  return (gettext("\tgroupspace [-Hinp] [-o field[,...]] "
      "[-s field] ...\n"
      "\t    [-S field] ... [-t type[,...]] "
      "<filesystem|snapshot>\n"));
 case 149:
  return (gettext("\thold [-r] <tag> <snapshot> ...\n"));
 case 148:
  return (gettext("\tholds [-Hp] [-r|-d depth] "
      "<filesystem|volume|snapshot> ...\n"));
 case 141:
  return (gettext("\trelease [-r] <tag> <snapshot> ...\n"));
 case 152:
  return (gettext("\tdiff [-FHt] <snapshot> "
      "[snapshot|filesystem]\n"));
 case 140:
  return (gettext("\tremap <filesystem | volume>\n"));
 case 157:
  return (gettext("\tbookmark <snapshot> <bookmark>\n"));
 case 156:
  return (gettext("\tprogram [-jn] [-t <instruction limit>] "
      "[-m <memory limit (b)>] <pool> <program file> "
      "[lua args...]\n"));
 }

 abort();

}
