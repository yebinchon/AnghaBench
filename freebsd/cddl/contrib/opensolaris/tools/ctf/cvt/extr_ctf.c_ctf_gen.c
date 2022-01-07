
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_20__ {int iib_nobjts; int iib_nfuncs; int iib_types; int * iib_funcs; int * iib_objts; TYPE_1__* iib_td; } ;
typedef TYPE_3__ iiburst_t ;
struct TYPE_19__ {int ctp_magic; } ;
struct TYPE_21__ {void* cth_strlen; void* cth_stroff; void* cth_typeoff; void* cth_funcoff; void* cth_objtoff; void* cth_lbloff; void* cth_parname; void* cth_parlabel; TYPE_2__ cth_preamble; int cth_flags; int cth_version; int cth_magic; } ;
typedef TYPE_4__ ctf_header_t ;
struct TYPE_22__ {int ctb_strtab; } ;
typedef TYPE_5__ ctf_buf_t ;
typedef int caddr_t ;
struct TYPE_18__ {int td_labels; int td_parname; int td_parlabel; } ;


 int CTF_F_COMPRESS ;
 int CTF_MAGIC ;
 int CTF_SWAP_BYTES ;
 int CTF_VERSION ;
 int SWAP_16 (int ) ;
 int SWAP_32 (void*) ;
 void* ctf_buf_cur (TYPE_5__*) ;
 int ctf_buf_free (TYPE_5__*) ;
 TYPE_5__* ctf_buf_new () ;
 int debug (int,char*,int ) ;
 int list_count (int ) ;
 int list_iter (int ,int ,TYPE_5__*) ;
 int pad_buffer (TYPE_5__*,int) ;
 void* strtab_insert (int *,int ) ;
 void* strtab_size (int *) ;
 int target_requires_swap ;
 int write_buffer (TYPE_4__*,TYPE_5__*,size_t*) ;
 int write_compressed_buffer (TYPE_4__*,TYPE_5__*,size_t*) ;
 int write_functions (int ,TYPE_5__*) ;
 int write_label ;
 int write_objects (int ,TYPE_5__*) ;
 int write_type ;

caddr_t
ctf_gen(iiburst_t *iiburst, size_t *resszp, int do_compress)
{
 ctf_buf_t *buf = ctf_buf_new();
 ctf_header_t h;
 caddr_t outbuf;

 int i;

 target_requires_swap = do_compress & CTF_SWAP_BYTES;
 do_compress &= ~CTF_SWAP_BYTES;






 h.cth_magic = CTF_MAGIC;
 h.cth_version = CTF_VERSION;
 h.cth_flags = do_compress ? CTF_F_COMPRESS : 0;
 h.cth_parlabel = strtab_insert(&buf->ctb_strtab,
     iiburst->iib_td->td_parlabel);
 h.cth_parname = strtab_insert(&buf->ctb_strtab,
     iiburst->iib_td->td_parname);

 h.cth_lbloff = 0;
 (void) list_iter(iiburst->iib_td->td_labels, write_label,
     buf);

 pad_buffer(buf, 2);
 h.cth_objtoff = ctf_buf_cur(buf);
 for (i = 0; i < iiburst->iib_nobjts; i++)
  write_objects(iiburst->iib_objts[i], buf);

 pad_buffer(buf, 2);
 h.cth_funcoff = ctf_buf_cur(buf);
 for (i = 0; i < iiburst->iib_nfuncs; i++)
  write_functions(iiburst->iib_funcs[i], buf);

 pad_buffer(buf, 4);
 h.cth_typeoff = ctf_buf_cur(buf);
 (void) list_iter(iiburst->iib_types, write_type, buf);

 debug(2, "CTF wrote %d types\n", list_count(iiburst->iib_types));

 h.cth_stroff = ctf_buf_cur(buf);
 h.cth_strlen = strtab_size(&buf->ctb_strtab);

 if (target_requires_swap) {
  SWAP_16(h.cth_preamble.ctp_magic);
  SWAP_32(h.cth_parlabel);
  SWAP_32(h.cth_parname);
  SWAP_32(h.cth_lbloff);
  SWAP_32(h.cth_objtoff);
  SWAP_32(h.cth_funcoff);
  SWAP_32(h.cth_typeoff);
  SWAP_32(h.cth_stroff);
  SWAP_32(h.cth_strlen);
 }






 if (do_compress)
  outbuf = write_compressed_buffer(&h, buf, resszp);
 else
  outbuf = write_buffer(&h, buf, resszp);

 ctf_buf_free(buf);
 return (outbuf);
}
