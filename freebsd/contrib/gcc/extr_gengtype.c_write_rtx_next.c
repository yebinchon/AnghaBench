
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int outf_p ;


 int NUM_RTX_CODE ;
 int get_output_file_with_visibility (int *) ;
 int oprintf (int ,char*,...) ;
 int* rtx_next_new ;

__attribute__((used)) static void
write_rtx_next (void)
{
  outf_p f = get_output_file_with_visibility (((void*)0));
  int i;

  oprintf (f, "\n/* Used to implement the RTX_NEXT macro.  */\n");
  oprintf (f, "const unsigned char rtx_next[NUM_RTX_CODE] = {\n");
  for (i = 0; i < NUM_RTX_CODE; i++)
    if (rtx_next_new[i] == -1)
      oprintf (f, "  0,\n");
    else
      oprintf (f,
        "  RTX_HDR_SIZE + %d * sizeof (rtunion),\n",
        rtx_next_new[i]);
  oprintf (f, "};\n");
}
