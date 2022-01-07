
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_12__ ;


struct internal_exec {void* a_text; scalar_t__ a_data; scalar_t__ a_bss; } ;
struct aout_backend_data {int default_text_vma; int exec_header_not_counted; scalar_t__ zmagic_mapped_contiguous; scalar_t__ text_includes_header; } ;
typedef void* file_ptr ;
typedef void* bfd_vma ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_15__ {int flags; } ;
typedef TYPE_1__ bfd ;
struct TYPE_16__ {int filepos; int vma; int size; int user_set_vma; } ;
typedef TYPE_2__ asection ;
struct TYPE_17__ {scalar_t__ vma; scalar_t__ size; int alignment_power; int user_set_vma; } ;
struct TYPE_14__ {int exec_bytes_size; int zmagic_disk_block_size; int page_size; int segment_size; } ;


 void* BFD_ALIGN (void*,int) ;
 int HAS_RELOC ;
 int N_SET_MAGIC (struct internal_exec,int ) ;
 int QMAGIC ;
 int ZMAGIC ;
 TYPE_12__ adata (TYPE_1__*) ;
 scalar_t__ align_power (void*,int ) ;
 struct aout_backend_data* aout_backend_info (TYPE_1__*) ;
 scalar_t__ obj_aout_subformat (TYPE_1__*) ;
 TYPE_7__* obj_bsssec (TYPE_1__*) ;
 TYPE_2__* obj_datasec (TYPE_1__*) ;
 TYPE_2__* obj_textsec (TYPE_1__*) ;
 scalar_t__ q_magic_format ;

__attribute__((used)) static void
adjust_z_magic (bfd *abfd, struct internal_exec *execp)
{
  bfd_size_type data_pad, text_pad;
  file_ptr text_end;
  const struct aout_backend_data *abdp;

  bfd_boolean ztih;

  abdp = aout_backend_info (abfd);


  ztih = (abdp != ((void*)0)
   && (abdp->text_includes_header
       || obj_aout_subformat (abfd) == q_magic_format));
  obj_textsec (abfd)->filepos = (ztih
     ? adata (abfd).exec_bytes_size
     : adata (abfd).zmagic_disk_block_size);
  if (! obj_textsec (abfd)->user_set_vma)
    {

      obj_textsec (abfd)->vma = ((abfd->flags & HAS_RELOC)
     ? 0
     : (ztih
        ? (abdp->default_text_vma
           + adata (abfd).exec_bytes_size)
        : abdp->default_text_vma));
      text_pad = 0;
    }
  else
    {



      if (ztih)
 text_pad = ((obj_textsec (abfd)->filepos - obj_textsec (abfd)->vma)
      & (adata (abfd).page_size - 1));
      else
 text_pad = ((- obj_textsec (abfd)->vma)
      & (adata (abfd).page_size - 1));
    }


  if (ztih)
    {
      text_end = obj_textsec (abfd)->filepos + obj_textsec (abfd)->size;
      text_pad += BFD_ALIGN (text_end, adata (abfd).page_size) - text_end;
    }
  else
    {



      text_end = obj_textsec (abfd)->size;
      text_pad += BFD_ALIGN (text_end, adata (abfd).page_size) - text_end;
      text_end += obj_textsec (abfd)->filepos;
    }
  obj_textsec (abfd)->size += text_pad;
  text_end += text_pad;


  if (!obj_datasec (abfd)->user_set_vma)
    {
      bfd_vma vma;
      vma = obj_textsec (abfd)->vma + obj_textsec (abfd)->size;
      obj_datasec (abfd)->vma = BFD_ALIGN (vma, adata (abfd).segment_size);
    }
  if (abdp && abdp->zmagic_mapped_contiguous)
    {
      asection * text = obj_textsec (abfd);
      asection * data = obj_datasec (abfd);

      text_pad = data->vma - (text->vma + text->size);


      if (text_pad > 0)
 text->size += text_pad;
    }
  obj_datasec (abfd)->filepos = (obj_textsec (abfd)->filepos
     + obj_textsec (abfd)->size);


  execp->a_text = obj_textsec (abfd)->size;
  if (ztih && (!abdp || (abdp && !abdp->exec_header_not_counted)))
    execp->a_text += adata (abfd).exec_bytes_size;
  if (obj_aout_subformat (abfd) == q_magic_format)
    N_SET_MAGIC (*execp, QMAGIC);
  else
    N_SET_MAGIC (*execp, ZMAGIC);


  obj_datasec (abfd)->size
    = align_power (obj_datasec (abfd)->size,
     obj_bsssec (abfd)->alignment_power);
  execp->a_data = BFD_ALIGN (obj_datasec (abfd)->size,
        adata (abfd).page_size);
  data_pad = execp->a_data - obj_datasec (abfd)->size;


  if (!obj_bsssec (abfd)->user_set_vma)
    obj_bsssec (abfd)->vma = (obj_datasec (abfd)->vma
         + obj_datasec (abfd)->size);







  if (align_power (obj_bsssec (abfd)->vma, obj_bsssec (abfd)->alignment_power)
      == obj_datasec (abfd)->vma + obj_datasec (abfd)->size)
    execp->a_bss = (data_pad > obj_bsssec (abfd)->size
      ? 0 : obj_bsssec (abfd)->size - data_pad);
  else
    execp->a_bss = obj_bsssec (abfd)->size;
}
