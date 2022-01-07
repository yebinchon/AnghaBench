
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* VERSION ;
 int _SC_PAGESIZE ;
 scalar_t__ bigendian () ;
 int memcpy (char*,char*,int) ;
 char page_size ;
 int read_trace_init (char,char) ;
 int strlen (char*) ;
 char sysconf (int ) ;
 int write_or_die (char*,int) ;

__attribute__((used)) static void tracing_data_header(void)
{
 char buf[20];


 buf[0] = 23;
 buf[1] = 8;
 buf[2] = 68;
 memcpy(buf + 3, "tracing", 7);

 write_or_die(buf, 10);

 write_or_die(VERSION, strlen(VERSION) + 1);


 if (bigendian())
  buf[0] = 1;
 else
  buf[0] = 0;

 read_trace_init(buf[0], buf[0]);

 write_or_die(buf, 1);


 buf[0] = sizeof(long);
 write_or_die(buf, 1);


 page_size = sysconf(_SC_PAGESIZE);
 write_or_die(&page_size, 4);
}
