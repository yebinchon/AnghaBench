
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int dummy; } ;


 int PEVENT_NSEC_OUTPUT ;
 struct pevent* pevent_alloc () ;
 int pevent_set_file_bigendian (struct pevent*,int) ;
 int pevent_set_flag (struct pevent*,int ) ;
 int pevent_set_host_bigendian (struct pevent*,int) ;

struct pevent *read_trace_init(int file_bigendian, int host_bigendian)
{
 struct pevent *pevent = pevent_alloc();

 if (pevent != ((void*)0)) {
  pevent_set_flag(pevent, PEVENT_NSEC_OUTPUT);
  pevent_set_file_bigendian(pevent, file_bigendian);
  pevent_set_host_bigendian(pevent, host_bigendian);
 }

 return pevent;
}
