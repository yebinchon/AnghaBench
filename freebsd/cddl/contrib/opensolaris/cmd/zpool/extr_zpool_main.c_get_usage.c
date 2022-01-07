
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_help_t ;
 int abort () ;
 char const* gettext (char*) ;

__attribute__((used)) static const char *
get_usage(zpool_help_t idx)
{
 switch (idx) {
 case 154:
  return (gettext("\tadd [-fn] <pool> <vdev> ...\n"));
 case 153:
  return (gettext("\tattach [-f] <pool> <device> "
      "<new-device>\n"));
 case 151:
  return (gettext("\tclear [-nF] <pool> [device]\n"));
 case 150:
  return (gettext("\tcreate [-fnd] [-B] "
      "[-o property=value] ... \n"
      "\t    [-O file-system-property=value] ...\n"
      "\t    [-m mountpoint] [-R root] [-t tempname] "
      "<pool> <vdev> ...\n"));
 case 152:
  return (gettext("\tcheckpoint [--discard] <pool> ...\n"));
 case 149:
  return (gettext("\tdestroy [-f] <pool>\n"));
 case 148:
  return (gettext("\tdetach <pool> <device>\n"));
 case 147:
  return (gettext("\texport [-f] <pool> ...\n"));
 case 145:
  return (gettext("\thistory [-il] [<pool>] ...\n"));
 case 144:
  return (gettext("\timport [-d dir] [-D]\n"
      "\timport [-o mntopts] [-o property=value] ... \n"
      "\t    [-d dir | -c cachefile] [-D] [-f] [-m] [-N] "
      "[-R root] [-F [-n]] -a\n"
      "\timport [-o mntopts] [-o property=value] ... \n"
      "\t    [-d dir | -c cachefile] [-D] [-f] [-m] [-N] "
      "[-R root] [-F [-n]] [-t]\n"
      "\t    [--rewind-to-checkpoint] <pool | id> [newpool]\n"));
 case 142:
  return (gettext("\tiostat [-v] [-T d|u] [pool] ... [interval "
      "[count]]\n"));
 case 141:
  return (gettext("\tlabelclear [-f] <vdev>\n"));
 case 140:
  return (gettext("\tlist [-Hpv] [-o property[,...]] "
      "[-T d|u] [pool] ... [interval [count]]\n"));
 case 139:
  return (gettext("\toffline [-t] <pool> <device> ...\n"));
 case 138:
  return (gettext("\tonline [-e] <pool> <device> ...\n"));
 case 134:
  return (gettext("\treplace [-f] <pool> <device> "
      "[new-device]\n"));
 case 136:
  return (gettext("\tremove [-nps] <pool> <device> ...\n"));
 case 135:
  return (gettext("\treopen <pool>\n"));
 case 143:
  return (gettext("\tinitialize [-cs] <pool> [<device> ...]\n"));
 case 133:
  return (gettext("\tscrub [-s | -p] <pool> ...\n"));
 case 130:
  return (gettext("\tstatus [-vx] [-T d|u] [pool] ... [interval "
      "[count]]\n"));
 case 128:
  return (gettext("\tupgrade [-v]\n"
      "\tupgrade [-V version] <-a | pool ...>\n"));
 case 146:
  return (gettext("\tget [-Hp] [-o \"all\" | field[,...]] "
      "<\"all\" | property[,...]> <pool> ...\n"));
 case 132:
  return (gettext("\tset <property=value> <pool> \n"));
 case 131:
  return (gettext("\tsplit [-n] [-R altroot] [-o mntopts]\n"
      "\t    [-o property=value] <pool> <newpool> "
      "[<device> ...]\n"));
 case 137:
  return (gettext("\treguid <pool>\n"));
 case 129:
  return (gettext("\tsync [pool] ...\n"));
 }

 abort();

}
