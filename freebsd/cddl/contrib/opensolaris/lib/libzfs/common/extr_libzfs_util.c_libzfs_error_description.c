
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* libzfs_desc; int libzfs_error; } ;
typedef TYPE_1__ libzfs_handle_t ;
 int TEXT_DOMAIN ;
 int assert (int) ;
 char const* dgettext (int ,char*) ;

const char *
libzfs_error_description(libzfs_handle_t *hdl)
{
 if (hdl->libzfs_desc[0] != '\0')
  return (hdl->libzfs_desc);

 switch (hdl->libzfs_error) {
 case 168:
  return (dgettext(TEXT_DOMAIN, "out of memory"));
 case 201:
  return (dgettext(TEXT_DOMAIN, "invalid property value"));
 case 150:
  return (dgettext(TEXT_DOMAIN, "read-only property"));
 case 148:
  return (dgettext(TEXT_DOMAIN, "property doesn't apply to "
      "datasets of this type"));
 case 151:
  return (dgettext(TEXT_DOMAIN, "property cannot be inherited"));
 case 149:
  return (dgettext(TEXT_DOMAIN, "invalid quota or reservation"));
 case 197:
  return (dgettext(TEXT_DOMAIN, "operation not applicable to "
      "datasets of this type"));
 case 194:
  return (dgettext(TEXT_DOMAIN, "pool or dataset is busy"));
 case 185:
  return (dgettext(TEXT_DOMAIN, "pool or dataset exists"));
 case 170:
  return (dgettext(TEXT_DOMAIN, "no such pool or dataset"));
 case 199:
  return (dgettext(TEXT_DOMAIN, "invalid backup stream"));
 case 186:
  return (dgettext(TEXT_DOMAIN, "dataset is read-only"));
 case 129:
  return (dgettext(TEXT_DOMAIN, "volume size exceeds limit for "
      "this system"));
 case 180:
  return (dgettext(TEXT_DOMAIN, "invalid name"));
 case 200:
  return (dgettext(TEXT_DOMAIN, "unable to restore to "
      "destination"));
 case 207:
  return (dgettext(TEXT_DOMAIN, "backup failed"));
 case 198:
  return (dgettext(TEXT_DOMAIN, "invalid target vdev"));
 case 171:
  return (dgettext(TEXT_DOMAIN, "no such device in pool"));
 case 205:
  return (dgettext(TEXT_DOMAIN, "invalid device"));
 case 167:
  return (dgettext(TEXT_DOMAIN, "no valid replicas"));
 case 144:
  return (dgettext(TEXT_DOMAIN, "currently resilvering"));
 case 196:
  return (dgettext(TEXT_DOMAIN, "unsupported version or "
      "feature"));
 case 155:
  return (dgettext(TEXT_DOMAIN, "pool is unavailable"));
 case 191:
  return (dgettext(TEXT_DOMAIN, "too many devices in one vdev"));
 case 204:
  return (dgettext(TEXT_DOMAIN, "must be an absolute path"));
 case 192:
  return (dgettext(TEXT_DOMAIN, "operation crosses datasets or "
      "pools"));
 case 128:
  return (dgettext(TEXT_DOMAIN, "dataset in use by local zone"));
 case 175:
  return (dgettext(TEXT_DOMAIN, "mount failed"));
 case 136:
  return (dgettext(TEXT_DOMAIN, "umount failed"));
 case 133:
  return (dgettext(TEXT_DOMAIN, "unshare(1M) failed"));
 case 141:
  return (dgettext(TEXT_DOMAIN, "share(1M) failed"));
 case 132:
  return (dgettext(TEXT_DOMAIN, "smb remove share failed"));
 case 140:
  return (dgettext(TEXT_DOMAIN, "smb add share failed"));
 case 159:
  return (dgettext(TEXT_DOMAIN, "permission denied"));
 case 166:
  return (dgettext(TEXT_DOMAIN, "out of space"));
 case 184:
  return (dgettext(TEXT_DOMAIN, "bad address"));
 case 179:
  return (dgettext(TEXT_DOMAIN, "I/O error"));
 case 182:
  return (dgettext(TEXT_DOMAIN, "signal received"));
 case 177:
  return (dgettext(TEXT_DOMAIN, "device is reserved as a hot "
      "spare"));
 case 181:
  return (dgettext(TEXT_DOMAIN, "invalid vdev configuration"));
 case 147:
  return (dgettext(TEXT_DOMAIN, "recursive dataset dependency"));
 case 169:
  return (dgettext(TEXT_DOMAIN, "no history available"));
 case 157:
  return (dgettext(TEXT_DOMAIN, "failed to retrieve "
      "pool properties"));
 case 153:
  return (dgettext(TEXT_DOMAIN, "operation not supported "
      "on this type of pool"));
 case 154:
  return (dgettext(TEXT_DOMAIN, "invalid argument for "
      "this pool operation"));
 case 174:
  return (dgettext(TEXT_DOMAIN, "dataset name is too long"));
 case 160:
  return (dgettext(TEXT_DOMAIN, "open failed"));
 case 173:
  return (dgettext(TEXT_DOMAIN,
      "disk capacity information could not be retrieved"));
 case 176:
  return (dgettext(TEXT_DOMAIN, "write of label failed"));
 case 195:
  return (dgettext(TEXT_DOMAIN, "invalid user/group"));
 case 203:
  return (dgettext(TEXT_DOMAIN, "invalid permission"));
 case 202:
  return (dgettext(TEXT_DOMAIN, "invalid permission set name"));
 case 172:
  return (dgettext(TEXT_DOMAIN, "delegated administration is "
      "disabled on pool"));
 case 206:
  return (dgettext(TEXT_DOMAIN, "invalid or missing cache file"));
 case 178:
  return (dgettext(TEXT_DOMAIN, "device is in use as a cache"));
 case 131:
  return (dgettext(TEXT_DOMAIN, "vdev specification is not "
      "supported"));
 case 165:
  return (dgettext(TEXT_DOMAIN, "operation not supported "
      "on this dataset"));
 case 208:
  return (dgettext(TEXT_DOMAIN, "pool has active shared spare "
      "device"));
 case 134:
  return (dgettext(TEXT_DOMAIN, "log device has unplayed intent "
      "logs"));
 case 145:
  return (dgettext(TEXT_DOMAIN, "no such tag on this dataset"));
 case 146:
  return (dgettext(TEXT_DOMAIN, "tag already exists on this "
      "dataset"));
 case 139:
  return (dgettext(TEXT_DOMAIN, "tag too long"));
 case 158:
  return (dgettext(TEXT_DOMAIN, "pipe create failed"));
 case 138:
  return (dgettext(TEXT_DOMAIN, "thread create failed"));
 case 152:
  return (dgettext(TEXT_DOMAIN, "disk was split from this pool "
      "into a new one"));
 case 142:
  return (dgettext(TEXT_DOMAIN, "scrub is paused; "
      "use 'zpool scrub' to resume"));
 case 143:
  return (dgettext(TEXT_DOMAIN, "currently scrubbing; "
      "use 'zpool scrub -s' to cancel current scrub"));
 case 161:
  return (dgettext(TEXT_DOMAIN, "there is no active scrub"));
 case 189:
  return (dgettext(TEXT_DOMAIN, "unable to generate diffs"));
 case 188:
  return (dgettext(TEXT_DOMAIN, "invalid diff data"));
 case 156:
  return (dgettext(TEXT_DOMAIN, "pool is read-only"));
 case 162:
  return (dgettext(TEXT_DOMAIN, "operation is not "
      "in progress"));
 case 193:
  return (dgettext(TEXT_DOMAIN, "checkpoint exists"));
 case 187:
  return (dgettext(TEXT_DOMAIN, "currently discarding "
      "checkpoint"));
 case 164:
  return (dgettext(TEXT_DOMAIN, "checkpoint does not exist"));
 case 190:
  return (dgettext(TEXT_DOMAIN, "device removal in progress"));
 case 130:
  return (dgettext(TEXT_DOMAIN, "device exceeds supported size"));
 case 137:
  return (dgettext(TEXT_DOMAIN, "argument list too long"));
 case 183:
  return (dgettext(TEXT_DOMAIN, "currently initializing"));
 case 163:
  return (dgettext(TEXT_DOMAIN, "there is no active "
      "initialization"));
 case 135:
  return (dgettext(TEXT_DOMAIN, "unknown error"));
 default:
  assert(hdl->libzfs_error == 0);
  return (dgettext(TEXT_DOMAIN, "no error"));
 }
}
