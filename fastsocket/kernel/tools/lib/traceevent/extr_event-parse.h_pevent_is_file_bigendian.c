
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int file_bigendian; } ;



__attribute__((used)) static inline int pevent_is_file_bigendian(struct pevent *pevent)
{
 return pevent->file_bigendian;
}
