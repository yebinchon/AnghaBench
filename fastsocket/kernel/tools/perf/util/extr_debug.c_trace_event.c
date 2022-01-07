
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
union perf_event {TYPE_1__ header; } ;


 char* PERF_COLOR_BLUE ;
 int color_fprintf (int ,char const*,char*,...) ;
 int dump_trace ;
 scalar_t__ isprint (unsigned char) ;
 int printf (char*) ;
 int stdout ;

void trace_event(union perf_event *event)
{
 unsigned char *raw_event = (void *)event;
 const char *color = PERF_COLOR_BLUE;
 int i, j;

 if (!dump_trace)
  return;

 printf(".");
 color_fprintf(stdout, color, "\n. ... raw event: size %d bytes\n",
        event->header.size);

 for (i = 0; i < event->header.size; i++) {
  if ((i & 15) == 0) {
   printf(".");
   color_fprintf(stdout, color, "  %04x: ", i);
  }

  color_fprintf(stdout, color, " %02x", raw_event[i]);

  if (((i & 15) == 15) || i == event->header.size-1) {
   color_fprintf(stdout, color, "  ");
   for (j = 0; j < 15-(i & 15); j++)
    color_fprintf(stdout, color, "   ");
   for (j = i & ~15; j <= i; j++) {
    color_fprintf(stdout, color, "%c",
           isprint(raw_event[j]) ?
           raw_event[j] : '.');
   }
   color_fprintf(stdout, color, "\n");
  }
 }
 printf(".\n");
}
