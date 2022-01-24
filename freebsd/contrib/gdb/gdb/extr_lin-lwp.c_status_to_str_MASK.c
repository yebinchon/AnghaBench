__attribute__((used)) static char *
FUNC0 (int status)
{
  static char buf[64];

  if (FUNC0 (status))
    snprintf (buf, sizeof (buf), "%d (stopped)",
	      FUNC0 (FUNC0 (status)));
  else if (FUNC0 (status))
    FUNC0 (buf, sizeof (buf), "%d (terminated)",
	      FUNC0 (FUNC0 (status)));
  else
    FUNC0 (buf, sizeof (buf), "%d (exited)", FUNC0 (status));

  return buf;
}