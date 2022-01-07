
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tdata_t ;


 int CTF_COMPRESS ;
 int CTF_SWAP_BYTES ;
 int free (int ) ;
 int mktmpname (char*,char*) ;
 scalar_t__ read_ctf (char**,int,int *,int ,int **,int) ;
 int read_ctf_save_cb ;
 scalar_t__ rename (int ,char*) ;
 int tdata_free (int *) ;
 int terminate (char*,char*,...) ;
 int tmpname ;
 int write_ctf (int *,char*,int ,int) ;

__attribute__((used)) static void
copy_ctf_data(char *srcfile, char *destfile, int keep_stabs)
{
 tdata_t *srctd;

 if (read_ctf(&srcfile, 1, ((void*)0), read_ctf_save_cb, &srctd, 1) == 0)
  terminate("No CTF data found in source file %s\n", srcfile);

 tmpname = mktmpname(destfile, ".ctf");
 write_ctf(srctd, destfile, tmpname, CTF_COMPRESS | CTF_SWAP_BYTES | keep_stabs);
 if (rename(tmpname, destfile) != 0) {
  terminate("Couldn't rename temp file %s to %s", tmpname,
      destfile);
 }
 free(tmpname);
 tdata_free(srctd);
}
