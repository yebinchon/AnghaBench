
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ABTS_STAT_SIZE ;
 int curr_char ;
 int fflush (int ) ;
 int fprintf (int ,char*,int) ;
 int quiet ;
 int* status ;
 int stdout ;

__attribute__((used)) static void update_status(void)
{
    if (!quiet) {
        curr_char = (curr_char + 1) % ABTS_STAT_SIZE;
        fprintf(stdout, "\b%c", status[curr_char]);
        fflush(stdout);
    }
}
