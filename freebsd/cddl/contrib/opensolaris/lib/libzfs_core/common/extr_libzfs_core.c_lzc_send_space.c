
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
 int ZFS_IOC_SEND_SPACE ;
 int fnvlist_add_boolean (int *,char*) ;
 int fnvlist_add_string (int *,char*,char const*) ;
 int * fnvlist_alloc () ;
 int fnvlist_lookup_uint64 (int *,char*) ;
 int lzc_ioctl (int ,char const*,int *,int **) ;
 int nvlist_free (int *) ;

int
lzc_send_space(const char *snapname, const char *from,
    enum lzc_send_flags flags, uint64_t *spacep)
{
 nvlist_t *args;
 nvlist_t *result;
 int err;

 args = fnvlist_alloc();
 if (from != ((void*)0))
  fnvlist_add_string(args, "from", from);
 if (flags & LZC_SEND_FLAG_LARGE_BLOCK)
  fnvlist_add_boolean(args, "largeblockok");
 if (flags & LZC_SEND_FLAG_EMBED_DATA)
  fnvlist_add_boolean(args, "embedok");
 if (flags & LZC_SEND_FLAG_COMPRESS)
  fnvlist_add_boolean(args, "compressok");
 err = lzc_ioctl(ZFS_IOC_SEND_SPACE, snapname, args, &result);
 nvlist_free(args);
 if (err == 0)
  *spacep = fnvlist_lookup_uint64(result, "space");
 nvlist_free(result);
 return (err);
}
