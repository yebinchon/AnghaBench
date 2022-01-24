__attribute__((used)) static void
FUNC0 (const char *prog, struct pex_obj *pex)
{
  int ret = FUNC0 (prog, pex);
  if (ret != 0)
    {
      FUNC0 ("%s returned %d exit status", prog, ret);
      FUNC0 (ret);
    }
}