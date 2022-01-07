
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pevent {int type_offset; int type_size; } ;


 int __parse_common (struct pevent*,void*,int *,int *,char*) ;

__attribute__((used)) static int trace_parse_common_type(struct pevent *pevent, void *data)
{
 return __parse_common(pevent, data,
         &pevent->type_size, &pevent->type_offset,
         "common_type");
}
