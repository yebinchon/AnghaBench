
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XML_Parser ;
typedef int XML_Char ;


 int O_BINARY ;
 int O_RDONLY ;
 int READ_SIZE ;
 int const* T (char*) ;
 scalar_t__ XML_GetBuffer (int ,int ) ;
 scalar_t__ XML_ParseBuffer (int ,int,int) ;
 scalar_t__ XML_STATUS_ERROR ;
 int close (int) ;
 int ftprintf (int ,int const*,int const*) ;
 int read (int,char*,int ) ;
 int reportError (int ,int const*) ;
 int stderr ;
 int topen (int const*,int) ;
 int tperror (int const*) ;

__attribute__((used)) static int
processStream(const XML_Char *filename, XML_Parser parser)
{

  int fd = 0;

  if (filename != ((void*)0)) {
    fd = topen(filename, O_BINARY|O_RDONLY);
    if (fd < 0) {
      tperror(filename);
      return 0;
    }
  }
  for (;;) {
    int nread;
    char *buf = (char *)XML_GetBuffer(parser, READ_SIZE);
    if (!buf) {
      if (filename != ((void*)0))
        close(fd);
      ftprintf(stderr, T("%s: out of memory\n"),
               filename != ((void*)0) ? filename : T("xmlwf"));
      return 0;
    }
    nread = read(fd, buf, READ_SIZE);
    if (nread < 0) {
      tperror(filename != ((void*)0) ? filename : T("STDIN"));
      if (filename != ((void*)0))
        close(fd);
      return 0;
    }
    if (XML_ParseBuffer(parser, nread, nread == 0) == XML_STATUS_ERROR) {
        reportError(parser, filename != ((void*)0) ? filename : T("STDIN"));
      if (filename != ((void*)0))
        close(fd);
      return 0;
    }
    if (nread == 0) {
      if (filename != ((void*)0))
        close(fd);
      break;;
    }
  }
  return 1;
}
