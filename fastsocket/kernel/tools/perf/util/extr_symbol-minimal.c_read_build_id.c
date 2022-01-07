
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 size_t NOTE_ALIGN (int) ;
 scalar_t__ NT_GNU_BUILD_ID ;
 void* bswap_32 (int) ;
 scalar_t__ memcmp (char const*,char*,int) ;
 int memcpy (void*,void*,size_t) ;
 int memset (void*,int ,size_t) ;
 size_t min (size_t,size_t) ;

__attribute__((used)) static int read_build_id(void *note_data, size_t note_len, void *bf,
    size_t size, bool need_swap)
{
 struct {
  u32 n_namesz;
  u32 n_descsz;
  u32 n_type;
 } *nhdr;
 void *ptr;

 ptr = note_data;
 while (ptr < (note_data + note_len)) {
  const char *name;
  size_t namesz, descsz;

  nhdr = ptr;
  if (need_swap) {
   nhdr->n_namesz = bswap_32(nhdr->n_namesz);
   nhdr->n_descsz = bswap_32(nhdr->n_descsz);
   nhdr->n_type = bswap_32(nhdr->n_type);
  }

  namesz = NOTE_ALIGN(nhdr->n_namesz);
  descsz = NOTE_ALIGN(nhdr->n_descsz);

  ptr += sizeof(*nhdr);
  name = ptr;
  ptr += namesz;
  if (nhdr->n_type == NT_GNU_BUILD_ID &&
      nhdr->n_namesz == sizeof("GNU")) {
   if (memcmp(name, "GNU", sizeof("GNU")) == 0) {
    size_t sz = min(size, descsz);
    memcpy(bf, ptr, sz);
    memset(bf + sz, 0, size - sz);
    return 0;
   }
  }
  ptr += descsz;
 }

 return -1;
}
