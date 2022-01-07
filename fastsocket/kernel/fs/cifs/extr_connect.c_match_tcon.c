
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {scalar_t__ tidStatus; int treeName; } ;


 scalar_t__ CifsExiting ;
 int MAX_TREE_SIZE ;
 scalar_t__ strncmp (int ,char const*,int ) ;

__attribute__((used)) static int match_tcon(struct cifs_tcon *tcon, const char *unc)
{
 if (tcon->tidStatus == CifsExiting)
  return 0;
 if (strncmp(tcon->treeName, unc, MAX_TREE_SIZE))
  return 0;
 return 1;
}
