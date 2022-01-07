
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_fs_path_t ;
typedef int atf_error_t ;


 scalar_t__ ENOENT ;
 int INV (int) ;
 int atf_error_free (int ) ;
 scalar_t__ atf_error_is (int ,char*) ;
 int atf_fs_rmdir (int const*) ;
 int atf_fs_unlink (int const*) ;
 scalar_t__ atf_is_error (int ) ;
 scalar_t__ atf_libc_error_code (int ) ;

__attribute__((used)) static
void
cleanup_tmpdir(const atf_fs_path_t *dir, const atf_fs_path_t *outfile,
               const atf_fs_path_t *errfile)
{
    {
        atf_error_t err = atf_fs_unlink(outfile);
        if (atf_is_error(err)) {
            INV(atf_error_is(err, "libc") &&
                atf_libc_error_code(err) == ENOENT);
            atf_error_free(err);
        } else
            INV(!atf_is_error(err));
    }

    {
        atf_error_t err = atf_fs_unlink(errfile);
        if (atf_is_error(err)) {
            INV(atf_error_is(err, "libc") &&
                atf_libc_error_code(err) == ENOENT);
            atf_error_free(err);
        } else
            INV(!atf_is_error(err));
    }

    {
        atf_error_t err = atf_fs_rmdir(dir);
        INV(!atf_is_error(err));
    }
}
