
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UChar ;
typedef scalar_t__ Int32 ;
typedef int FILE ;
typedef scalar_t__ Bool ;
typedef int BZFILE ;


 scalar_t__ BZ2_bzRead (scalar_t__*,int *,int *,int) ;
 int BZ2_bzReadClose (scalar_t__*,int *) ;
 int BZ2_bzReadGetUnused (scalar_t__*,int *,void**,scalar_t__*) ;
 int * BZ2_bzReadOpen (scalar_t__*,int *,int,int,int *,scalar_t__) ;




 int BZ_MAX_UNUSED ;

 scalar_t__ BZ_OK ;
 scalar_t__ BZ_STREAM_END ;

 scalar_t__ EOF ;
 scalar_t__ False ;
 int SET_BINARY_MODE (int *) ;
 scalar_t__ True ;
 int applySavedFileAttrToOutputFile (scalar_t__) ;
 int compressedStreamEOF () ;
 int configError () ;
 int crcError () ;
 scalar_t__ fclose (int *) ;
 scalar_t__ ferror (int *) ;
 scalar_t__ fflush (int *) ;
 scalar_t__ fileno (int *) ;
 scalar_t__ forceOverwrite ;
 int fprintf (int ,char*,...) ;
 scalar_t__ fread (int *,int,int,int *) ;
 int fwrite (int *,int,scalar_t__,int *) ;
 char* inName ;
 int ioError () ;
 scalar_t__ myfeof (int *) ;
 int noisy ;
 int outOfMemory () ;
 int * outputHandleJustInCase ;
 int panic (char*) ;
 char* progName ;
 int rewind (int *) ;
 scalar_t__ smallMode ;
 int stderr ;
 int * stdin ;
 int * stdout ;
 int verbosity ;

__attribute__((used)) static
Bool uncompressStream ( FILE *zStream, FILE *stream )
{
   BZFILE* bzf = ((void*)0);
   Int32 bzerr, bzerr_dummy, ret, nread, streamNo, i;
   UChar obuf[5000];
   UChar unused[BZ_MAX_UNUSED];
   Int32 nUnused;
   void* unusedTmpV;
   UChar* unusedTmp;

   nUnused = 0;
   streamNo = 0;

   SET_BINARY_MODE(stream);
   SET_BINARY_MODE(zStream);

   if (ferror(stream)) goto errhandler_io;
   if (ferror(zStream)) goto errhandler_io;

   while (True) {

      bzf = BZ2_bzReadOpen (
               &bzerr, zStream, verbosity,
               (int)smallMode, unused, nUnused
            );
      if (bzf == ((void*)0) || bzerr != BZ_OK) goto errhandler;
      streamNo++;

      while (bzerr == BZ_OK) {
         nread = BZ2_bzRead ( &bzerr, bzf, obuf, 5000 );
         if (bzerr == 131) goto trycat;
         if ((bzerr == BZ_OK || bzerr == BZ_STREAM_END) && nread > 0)
            fwrite ( obuf, sizeof(UChar), nread, stream );
         if (ferror(stream)) goto errhandler_io;
      }
      if (bzerr != BZ_STREAM_END) goto errhandler;

      BZ2_bzReadGetUnused ( &bzerr, bzf, &unusedTmpV, &nUnused );
      if (bzerr != BZ_OK) panic ( "decompress:bzReadGetUnused" );

      unusedTmp = (UChar*)unusedTmpV;
      for (i = 0; i < nUnused; i++) unused[i] = unusedTmp[i];

      BZ2_bzReadClose ( &bzerr, bzf );
      if (bzerr != BZ_OK) panic ( "decompress:bzReadGetUnused" );

      if (nUnused == 0 && myfeof(zStream)) break;
   }

   closeok:
   if (ferror(zStream)) goto errhandler_io;
   if (stream != stdout) {
      Int32 fd = fileno ( stream );
      if (fd < 0) goto errhandler_io;
      applySavedFileAttrToOutputFile ( fd );
   }
   ret = fclose ( zStream );
   if (ret == EOF) goto errhandler_io;

   if (ferror(stream)) goto errhandler_io;
   ret = fflush ( stream );
   if (ret != 0) goto errhandler_io;
   if (stream != stdout) {
      ret = fclose ( stream );
      outputHandleJustInCase = ((void*)0);
      if (ret == EOF) goto errhandler_io;
   }
   outputHandleJustInCase = ((void*)0);
   if (verbosity >= 2) fprintf ( stderr, "\n    " );
   return True;

   trycat:
   if (forceOverwrite) {
      rewind(zStream);
      while (True) {
        if (myfeof(zStream)) break;
        nread = fread ( obuf, sizeof(UChar), 5000, zStream );
        if (ferror(zStream)) goto errhandler_io;
        if (nread > 0) fwrite ( obuf, sizeof(UChar), nread, stream );
        if (ferror(stream)) goto errhandler_io;
      }
      goto closeok;
   }

   errhandler:
   BZ2_bzReadClose ( &bzerr_dummy, bzf );
   switch (bzerr) {
      case 133:
         configError(); break;
      case 130:
         errhandler_io:
         ioError(); break;
      case 132:
         crcError();
      case 129:
         outOfMemory();
      case 128:
         compressedStreamEOF();
      case 131:
         if (zStream != stdin) fclose(zStream);
         if (stream != stdout) fclose(stream);
         if (streamNo == 1) {
            return False;
         } else {
            if (noisy)
            fprintf ( stderr,
                      "\n%s: %s: trailing garbage after EOF ignored\n",
                      progName, inName );
            return True;
         }
      default:
         panic ( "decompress:unexpected error" );
   }

   panic ( "decompress:end" );
   return True;
}
