
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {struct dentry* mnt_root; } ;
struct qstr {char* name; void* len; } ;
struct dentry {int dummy; } ;
typedef int pid_t ;
typedef int buf ;


 int PROC_NUMBUF ;
 int d_drop (struct dentry*) ;
 struct dentry* d_hash_and_lookup (struct dentry*,struct qstr*) ;
 int dput (struct dentry*) ;
 int shrink_dcache_parent (struct dentry*) ;
 void* snprintf (char*,int,char*,int) ;
 void* strlen (char*) ;

__attribute__((used)) static void proc_flush_task_mnt(struct vfsmount *mnt, pid_t pid, pid_t tgid)
{
 struct dentry *dentry, *leader, *dir;
 char buf[PROC_NUMBUF];
 struct qstr name;

 name.name = buf;
 name.len = snprintf(buf, sizeof(buf), "%d", pid);
 dentry = d_hash_and_lookup(mnt->mnt_root, &name);
 if (dentry) {
  shrink_dcache_parent(dentry);
  d_drop(dentry);
  dput(dentry);
 }

 name.name = buf;
 name.len = snprintf(buf, sizeof(buf), "%d", tgid);
 leader = d_hash_and_lookup(mnt->mnt_root, &name);
 if (!leader)
  goto out;

 name.name = "task";
 name.len = strlen(name.name);
 dir = d_hash_and_lookup(leader, &name);
 if (!dir)
  goto out_put_leader;

 name.name = buf;
 name.len = snprintf(buf, sizeof(buf), "%d", pid);
 dentry = d_hash_and_lookup(dir, &name);
 if (dentry) {
  shrink_dcache_parent(dentry);
  d_drop(dentry);
  dput(dentry);
 }

 dput(dir);
out_put_leader:
 dput(leader);
out:
 return;
}
