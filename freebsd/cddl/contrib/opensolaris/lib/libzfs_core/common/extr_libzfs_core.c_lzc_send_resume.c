
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvlist_t ;
typedef enum lzc_send_flags { ____Placeholder_lzc_send_flags } lzc_send_flags ;


 int LZC_SEND_FLAG_COMPRESS ;
 int LZC_SEND_FLAG_EMBED_DATA ;
 int LZC_SEND_FLAG_LARGE_BLOCK ;
 int ZFS_IOC_SEND_NEW ;
 int fnvlist_add_boolean (int *,char*) ;
 int fnvlist_add_int32 (int *,char*,int) ;
 int fnvlist_add_string (int *,char*,char const*) ;
 int fnvlist_add_uint64 (int *,char*,int ) ;
 int * fnvlist_alloc () ;
 int lzc_ioctl (int ,char const*,int *,int *) ;
 int nvlist_free (int *) ;

int
lzc_send_resume(const char *snapname, const char *from, int fd,
    enum lzc_send_flags flags, uint64_t resumeobj, uint64_t resumeoff)
{
 nvlist_t *args;
 int err;

 args = fnvlist_alloc();
 fnvlist_add_int32(args, "fd", fd);
 if (from != ((void*)0))
  fnvlist_add_string(args, "fromsnap", from);
 if (flags & LZC_SEND_FLAG_LARGE_BLOCK)
  fnvlist_add_boolean(args, "largeblockok");
 if (flags & LZC_SEND_FLAG_EMBED_DATA)
  fnvlist_add_boolean(args, "embedok");
 if (flags & LZC_SEND_FLAG_COMPRESS)
  fnvlist_add_boolean(args, "compressok");
 if (resumeobj != 0 || resumeoff != 0) {
  fnvlist_add_uint64(args, "resume_object", resumeobj);
  fnvlist_add_uint64(args, "resume_offset", resumeoff);
 }
 err = lzc_ioctl(ZFS_IOC_SEND_NEW, snapname, args, ((void*)0));
 nvlist_free(args);
 return (err);
}
