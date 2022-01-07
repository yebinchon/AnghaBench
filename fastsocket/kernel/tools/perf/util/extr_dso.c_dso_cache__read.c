
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct machine {int dummy; } ;
struct dso_cache {int offset; int size; int data; } ;
struct dso {int cache; } ;
typedef int ssize_t ;


 int DSO__DATA_CACHE_MASK ;
 scalar_t__ DSO__DATA_CACHE_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int SEEK_SET ;
 int close (int) ;
 int dso__data_fd (struct dso*,struct machine*) ;
 int dso_cache__insert (int *,struct dso_cache*) ;
 int dso_cache__memcpy (struct dso_cache*,int,int *,int) ;
 int free (struct dso_cache*) ;
 int lseek (int,int,int ) ;
 int read (int,int ,scalar_t__) ;
 struct dso_cache* zalloc (scalar_t__) ;

__attribute__((used)) static ssize_t
dso_cache__read(struct dso *dso, struct machine *machine,
   u64 offset, u8 *data, ssize_t size)
{
 struct dso_cache *cache;
 ssize_t ret;
 int fd;

 fd = dso__data_fd(dso, machine);
 if (fd < 0)
  return -1;

 do {
  u64 cache_offset;

  ret = -ENOMEM;

  cache = zalloc(sizeof(*cache) + DSO__DATA_CACHE_SIZE);
  if (!cache)
   break;

  cache_offset = offset & DSO__DATA_CACHE_MASK;
  ret = -EINVAL;

  if (-1 == lseek(fd, cache_offset, SEEK_SET))
   break;

  ret = read(fd, cache->data, DSO__DATA_CACHE_SIZE);
  if (ret <= 0)
   break;

  cache->offset = cache_offset;
  cache->size = ret;
  dso_cache__insert(&dso->cache, cache);

  ret = dso_cache__memcpy(cache, offset, data, size);

 } while (0);

 if (ret <= 0)
  free(cache);

 close(fd);
 return ret;
}
