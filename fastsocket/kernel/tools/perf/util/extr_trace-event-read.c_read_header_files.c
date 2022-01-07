
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int dummy; } ;


 int BUFSIZ ;
 int die (char*) ;
 int free (char*) ;
 int header_page_size_size ;
 int long_size ;
 char* malloc_or_die (unsigned long long) ;
 scalar_t__ memcmp (char*,char*,int) ;
 unsigned long long read8 (struct pevent*) ;
 int read_or_die (char*,unsigned long long) ;
 int skip (unsigned long long) ;

__attribute__((used)) static void read_header_files(struct pevent *pevent)
{
 unsigned long long size;
 char *header_event;
 char buf[BUFSIZ];

 read_or_die(buf, 12);

 if (memcmp(buf, "header_page", 12) != 0)
  die("did not read header page");

 size = read8(pevent);
 skip(size);





 long_size = header_page_size_size;

 read_or_die(buf, 13);
 if (memcmp(buf, "header_event", 13) != 0)
  die("did not read header event");

 size = read8(pevent);
 header_event = malloc_or_die(size);
 read_or_die(header_event, size);
 free(header_event);
}
