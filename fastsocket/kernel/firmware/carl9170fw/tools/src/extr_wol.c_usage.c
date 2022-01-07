
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

void usage(void)
{
 fprintf(stderr, "Usage:\n");
 fprintf(stderr, "\twol -i monitor_dev -m DE:VI:CE:MA:CW:OL -n #num -v\n");

 fprintf(stderr, "\nDescription:\n");
 fprintf(stderr, "\tThis utility generates a WOL packet for the"
   "given [MAC] address and tries to injects"
   "it into [monitor_dev]\n");

 exit(EXIT_FAILURE);
}
