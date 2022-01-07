
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_format {int dummy; } ;


 scalar_t__ BUFSIZ ;
 int O_RDONLY ;
 scalar_t__ asprintf (char**,char*,int ,char const*,char const*) ;
 int close (int) ;
 int free (char*) ;
 int open (char*,int ) ;
 int pevent_parse_format (struct event_format**,void*,size_t,char const*) ;
 int read (int,void*,scalar_t__) ;
 void* realloc (void*,size_t) ;
 int tracing_events_path ;

struct event_format *event_format__new(const char *sys, const char *name)
{
 int fd, n;
 char *filename;
 void *bf = ((void*)0), *nbf;
 size_t size = 0, alloc_size = 0;
 struct event_format *format = ((void*)0);

 if (asprintf(&filename, "%s/%s/%s/format", tracing_events_path, sys, name) < 0)
  goto out;

 fd = open(filename, O_RDONLY);
 if (fd < 0)
  goto out_free_filename;

 do {
  if (size == alloc_size) {
   alloc_size += BUFSIZ;
   nbf = realloc(bf, alloc_size);
   if (nbf == ((void*)0))
    goto out_free_bf;
   bf = nbf;
  }

  n = read(fd, bf + size, BUFSIZ);
  if (n < 0)
   goto out_free_bf;
  size += n;
 } while (n > 0);

 pevent_parse_format(&format, bf, size, sys);

out_free_bf:
 free(bf);
 close(fd);
out_free_filename:
 free(filename);
out:
 return format;
}
