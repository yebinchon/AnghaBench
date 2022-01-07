
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tdata_t ;
typedef int iiburst_t ;
typedef int caddr_t ;
typedef int Elf ;


 int CTF_COMPRESS ;
 int CTF_FUZZY_MATCH ;
 int CTF_SWAP_BYTES ;
 int CTF_USE_DYNSYM ;
 int ctf_gen (int *,size_t*,int) ;
 int iiburst_free (int *) ;
 int * sort_iidescs (int *,char const*,int *,int,int) ;

__attribute__((used)) static caddr_t
make_ctf_data(tdata_t *td, Elf *elf, const char *file, size_t *lenp, int flags)
{
 iiburst_t *iiburst;
 caddr_t data;

 iiburst = sort_iidescs(elf, file, td, flags & CTF_FUZZY_MATCH,
     flags & CTF_USE_DYNSYM);
 data = ctf_gen(iiburst, lenp, flags & (CTF_COMPRESS | CTF_SWAP_BYTES));

 iiburst_free(iiburst);

 return (data);
}
