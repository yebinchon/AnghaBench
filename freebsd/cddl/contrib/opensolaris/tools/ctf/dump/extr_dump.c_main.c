
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


struct TYPE_30__ {int avail_in; int avail_out; int total_out; void* next_out; void* next_in; } ;
typedef TYPE_1__ z_stream ;
struct stat {int st_size; } ;
typedef int h ;
struct TYPE_31__ {scalar_t__ ctp_magic; scalar_t__ ctp_version; } ;
typedef TYPE_2__ ctf_preamble_t ;
struct TYPE_32__ {int cth_flags; int cth_stroff; int cth_strlen; } ;
typedef TYPE_3__ ctf_header_t ;
struct TYPE_33__ {int cd_ctflen; int cd_nsyms; TYPE_3__* cd_ctfdata; void* cd_strdata; void* cd_symdata; } ;
typedef TYPE_4__ ctf_data_t ;
typedef TYPE_3__* caddr_t ;
struct TYPE_35__ {int d_size; TYPE_3__* d_buf; } ;
struct TYPE_34__ {scalar_t__ sh_link; int sh_size; int sh_entsize; } ;
typedef TYPE_6__ GElf_Shdr ;
typedef int GElf_Ehdr ;
typedef int Elf_Scn ;
typedef TYPE_7__ Elf_Data ;
typedef int Elf ;


 int CTF_F_COMPRESS ;
 scalar_t__ CTF_MAGIC ;
 scalar_t__ CTF_VERSION ;
 int ELF_C_READ ;
 scalar_t__ EOF ;
 int EV_CURRENT ;
 int E_ERROR ;
 int F_ALLMSK ;
 int F_DATA ;
 int F_FUNC ;
 int F_HDR ;
 int F_LABEL ;
 int F_STATS ;
 int F_STR ;
 int F_TYPES ;
 TYPE_3__* MAP_FAILED ;
 int MAP_PRIVATE ;
 int O_CREAT ;
 int O_RDONLY ;
 int O_TRUNC ;
 int O_WRONLY ;
 int PROT_READ ;
 int Z_FINISH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int bcopy (TYPE_3__*,TYPE_3__*,int) ;
 int bzero (TYPE_1__*,int) ;
 int close (int) ;
 int die (char*,...) ;
 int * elf_begin (int,int ,int *) ;
 int elf_end (int *) ;
 void* elf_getdata (int *,int *) ;
 int * elf_getscn (int *,scalar_t__) ;
 int elf_version (int ) ;
 int * findelfscn (int *,int *,char*) ;
 int flags ;
 int fstat (int,struct stat*) ;
 int * gelf_getehdr (int *,int *) ;
 int * gelf_getshdr (int *,TYPE_6__*) ;
 int getopt (int,char**,char*) ;
 int inflate (TYPE_1__*,int ) ;
 int inflateEnd (TYPE_1__*) ;
 int inflateInit (TYPE_1__*) ;
 void* malloc (int) ;
 TYPE_3__* mmap (int *,int,int ,int ,int,int ) ;
 int open (char const*,int,...) ;
 char* optarg ;
 scalar_t__ opterr ;
 int optind ;
 char optopt ;
 int print_header (TYPE_3__*,TYPE_4__*) ;
 int print_labeltable (TYPE_3__*,TYPE_4__*) ;
 int print_stats () ;
 int print_usage (int ,int) ;
 int read_data (TYPE_3__*,TYPE_4__*) ;
 int read_funcs (TYPE_3__*,TYPE_4__*) ;
 int read_strtab (TYPE_3__*,TYPE_4__*) ;
 int read_types (TYPE_3__*,TYPE_4__*) ;
 int stderr ;
 int stdout ;
 int warn (char*,...) ;
 int write (int,TYPE_3__*,int) ;
 int zError (int) ;

int
main(int argc, char *argv[])
{
 const char *filename = ((void*)0);
 const char *ufile = ((void*)0);
 int error = 0;
 int c, fd, ufd;

 ctf_data_t cd;
 const ctf_preamble_t *pp;
 ctf_header_t *hp = ((void*)0);
 Elf *elf;
 GElf_Ehdr ehdr;

 (void) elf_version(EV_CURRENT);

 for (opterr = 0; optind < argc; optind++) {
  while ((c = getopt(argc, argv, "dfhlsStu:")) != (int)EOF) {
   switch (c) {
   case 'd':
    flags |= F_DATA;
    break;
   case 'f':
    flags |= F_FUNC;
    break;
   case 'h':
    flags |= F_HDR;
    break;
   case 'l':
    flags |= F_LABEL;
    break;
   case 's':
    flags |= F_STR;
    break;
   case 'S':
    flags |= F_STATS;
    break;
   case 't':
    flags |= F_TYPES;
    break;
   case 'u':
    ufile = optarg;
    break;
   default:
    if (optopt == '?')
     return (print_usage(stdout, 1));
    warn("illegal option -- %c\n", optopt);
    return (print_usage(stderr, 0));
   }
  }

  if (optind < argc) {
   if (filename != ((void*)0))
    return (print_usage(stderr, 0));
   filename = argv[optind];
  }
 }

 if (filename == ((void*)0))
  return (print_usage(stderr, 0));

 if (flags == 0 && ufile == ((void*)0))
  flags = F_ALLMSK;

 if ((fd = open(filename, O_RDONLY)) == -1)
  die("failed to open %s", filename);

 if ((elf = elf_begin(fd, ELF_C_READ, ((void*)0))) != ((void*)0) &&
     gelf_getehdr(elf, &ehdr) != ((void*)0)) {

  Elf_Data *dp = ((void*)0);
  Elf_Scn *ctfscn = findelfscn(elf, &ehdr, ".SUNW_ctf");
  Elf_Scn *symscn;
  GElf_Shdr ctfshdr;

  if (ctfscn == ((void*)0) || (dp = elf_getdata(ctfscn, ((void*)0))) == ((void*)0))
   die("%s does not contain .SUNW_ctf data\n", filename);

  cd.cd_ctfdata = dp->d_buf;
  cd.cd_ctflen = dp->d_size;







  if (gelf_getshdr(ctfscn, &ctfshdr) != ((void*)0) &&
      ctfshdr.sh_link != 0) {
   symscn = elf_getscn(elf, ctfshdr.sh_link);
  } else {
   symscn = findelfscn(elf, &ehdr, ".symtab");
  }


  if (symscn != ((void*)0)) {
   GElf_Shdr shdr;
   Elf_Scn *symstrscn;

   if (gelf_getshdr(symscn, &shdr) != ((void*)0)) {
    symstrscn = elf_getscn(elf, shdr.sh_link);

    cd.cd_nsyms = shdr.sh_size / shdr.sh_entsize;
    cd.cd_symdata = elf_getdata(symscn, ((void*)0));
    cd.cd_strdata = elf_getdata(symstrscn, ((void*)0));
   }
  }
 } else {
  struct stat st;

  if (fstat(fd, &st) == -1)
   die("failed to fstat %s", filename);

  cd.cd_ctflen = st.st_size;
  cd.cd_ctfdata = mmap(((void*)0), cd.cd_ctflen, PROT_READ,
      MAP_PRIVATE, fd, 0);
  if (cd.cd_ctfdata == MAP_FAILED)
   die("failed to mmap %s", filename);
 }






 if (cd.cd_ctflen < sizeof (ctf_preamble_t))
  die("%s does not contain a CTF preamble\n", filename);

 void *v = (void *) cd.cd_ctfdata;
 pp = v;

 if (pp->ctp_magic != CTF_MAGIC)
  die("%s does not appear to contain CTF data\n", filename);

 if (pp->ctp_version == CTF_VERSION) {
  v = (void *) cd.cd_ctfdata;
  hp = v;
  cd.cd_ctfdata = (caddr_t)cd.cd_ctfdata + sizeof (ctf_header_t);

  if (cd.cd_ctflen < sizeof (ctf_header_t)) {
   die("%s does not contain a v%d CTF header\n", filename,
       CTF_VERSION);
  }

 } else {
  die("%s contains unsupported CTF version %d\n", filename,
      pp->ctp_version);
 }





 if (hp->cth_flags & CTF_F_COMPRESS) {
  z_stream zstr;
  void *buf;
  int rc;

  if ((buf = malloc(hp->cth_stroff + hp->cth_strlen)) == ((void*)0))
   die("failed to allocate decompression buffer");

  bzero(&zstr, sizeof (z_stream));
  zstr.next_in = (void *)cd.cd_ctfdata;
  zstr.avail_in = cd.cd_ctflen;
  zstr.next_out = buf;
  zstr.avail_out = hp->cth_stroff + hp->cth_strlen;

  if ((rc = inflateInit(&zstr)) != Z_OK)
   die("failed to initialize zlib: %s\n", zError(rc));

  if ((rc = inflate(&zstr, Z_FINISH)) != Z_STREAM_END)
   die("failed to decompress CTF data: %s\n", zError(rc));

  if ((rc = inflateEnd(&zstr)) != Z_OK)
   die("failed to finish decompression: %s\n", zError(rc));

  if (zstr.total_out != hp->cth_stroff + hp->cth_strlen)
   die("CTF data is corrupt -- short decompression\n");

  cd.cd_ctfdata = buf;
  cd.cd_ctflen = hp->cth_stroff + hp->cth_strlen;
 }

 if (flags & F_HDR)
  error |= print_header(hp, &cd);
 if (flags & (F_LABEL))
  error |= print_labeltable(hp, &cd);
 if (flags & (F_DATA | F_STATS))
  error |= read_data(hp, &cd);
 if (flags & (F_FUNC | F_STATS))
  error |= read_funcs(hp, &cd);
 if (flags & (F_TYPES | F_STATS))
  error |= read_types(hp, &cd);
 if (flags & (F_STR | F_STATS))
  error |= read_strtab(hp, &cd);
 if (flags & F_STATS)
  error |= print_stats();






 if (ufile != ((void*)0)) {
  ctf_header_t h;

  bcopy(hp, &h, sizeof (h));
  h.cth_flags &= ~CTF_F_COMPRESS;

  if ((ufd = open(ufile, O_WRONLY|O_CREAT|O_TRUNC, 0666)) < 0 ||
      write(ufd, &h, sizeof (h)) != sizeof (h) ||
      write(ufd, cd.cd_ctfdata, cd.cd_ctflen) != (int) cd.cd_ctflen) {
   warn("failed to write CTF data to '%s'", ufile);
   error |= E_ERROR;
  }

  (void) close(ufd);
 }

 if (elf != ((void*)0))
  (void) elf_end(elf);

 (void) close(fd);
 return (error);
}
