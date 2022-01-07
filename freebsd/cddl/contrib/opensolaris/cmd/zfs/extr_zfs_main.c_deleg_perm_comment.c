
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_deleg_note_t ;
 char* gettext (char*) ;

__attribute__((used)) static inline const char *
deleg_perm_comment(zfs_deleg_note_t note)
{
 const char *str = "";


 switch (note) {

 case 147:
  str = gettext("Must also have the permission that is being"
      "\n\t\t\t\tallowed");
  break;
 case 146:
  str = gettext("Must also have the 'create' ability and 'mount'"
      "\n\t\t\t\tability in the origin file system");
  break;
 case 145:
  str = gettext("Must also have the 'mount' ability");
  break;
 case 144:
  str = gettext("Must also have the 'mount' ability");
  break;
 case 143:
  str = gettext("Allows lookup of paths within a dataset;"
      "\n\t\t\t\tgiven an object number. Ordinary users need this"
      "\n\t\t\t\tin order to use zfs diff");
  break;
 case 140:
  str = gettext("Allows adding a user hold to a snapshot");
  break;
 case 139:
  str = gettext("Allows mount/umount of ZFS datasets");
  break;
 case 138:
  str = gettext("Must also have the 'mount'\n\t\t\t\tand"
      " 'promote' ability in the origin file system");
  break;
 case 137:
  str = gettext("Must also have the 'mount' and 'create'"
      " ability");
  break;
 case 136:
  str = gettext("Allows releasing a user hold which\n\t\t\t\t"
      "might destroy the snapshot");
  break;
 case 135:
  str = gettext("Must also have the 'mount' and 'create'"
      "\n\t\t\t\tability in the new parent");
  break;
 case 134:
  str = gettext("");
  break;
 case 133:
  str = gettext("");
  break;
 case 132:
  str = gettext("Allows sharing file systems over NFS or SMB"
      "\n\t\t\t\tprotocols");
  break;
 case 131:
  str = gettext("");
  break;






 case 142:
  str = gettext("Allows accessing any groupquota@... property");
  break;
 case 141:
  str = gettext("Allows reading any groupused@... property");
  break;
 case 130:
  str = gettext("Allows changing any user property");
  break;
 case 129:
  str = gettext("Allows accessing any userquota@... property");
  break;
 case 128:
  str = gettext("Allows reading any userused@... property");
  break;

 default:
  str = "";
 }

 return (str);
}
