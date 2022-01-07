
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat_session {int stat_mutex; } ;
struct seq_file {struct stat_session* private; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static void stat_seq_stop(struct seq_file *s, void *p)
{
 struct stat_session *session = s->private;
 mutex_unlock(&session->stat_mutex);
}
