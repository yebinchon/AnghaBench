__attribute__((used)) static void
FUNC0(char *buffer, int longest, const char *label)
{
    int len = FUNC0(label);
    int left = 0, right = 0;

    *buffer = 0;
    if (len < longest) {
	left = (longest - len) / 2;
	right = (longest - len - left);
	if (left > 0)
	    sprintf(buffer, "%*s", left, " ");
    }
    strcat(buffer, label);
    if (right > 0)
	FUNC0(buffer + strlen(buffer), "%*s", right, " ");
}