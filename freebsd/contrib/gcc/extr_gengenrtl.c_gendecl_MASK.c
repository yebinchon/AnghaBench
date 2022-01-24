__attribute__((used)) static void
FUNC0 (const char *format)
{
  const char *p;
  int i, pos;

  printf ("extern rtx gen_rtx_fmt_%s\t (RTX_CODE, ", format);
  FUNC0 ("enum machine_mode mode");

  /* Write each parameter that is needed and start a new line when the line
     would overflow.  */
  for (p = format, i = 0, pos = 75; *p != 0; p++)
    if (*p != '0')
      {
	int ourlen = strlen (FUNC0 (*p)) + 6 + (i > 9);

	FUNC0 (",");
	if (pos + ourlen > 76)
	  FUNC0 ("\n\t\t\t\t      "), pos = 39;

	FUNC0 (" %darg%d", FUNC0 (*p), i++);
	pos += ourlen;
      }

  FUNC0 (");\n");
}