
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct machine {int dummy; } ;
struct dso {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int BUG_ON (int) ;
 scalar_t__ dso_cache_read (struct dso*,struct machine*,int ,int *,scalar_t__) ;

ssize_t dso__data_read_offset(struct dso *dso, struct machine *machine,
         u64 offset, u8 *data, ssize_t size)
{
 ssize_t r = 0;
 u8 *p = data;

 do {
  ssize_t ret;

  ret = dso_cache_read(dso, machine, offset, p, size);
  if (ret < 0)
   return ret;


  if (!ret)
   break;

  BUG_ON(ret > size);

  r += ret;
  p += ret;
  offset += ret;
  size -= ret;

 } while (size);

 return r;
}
