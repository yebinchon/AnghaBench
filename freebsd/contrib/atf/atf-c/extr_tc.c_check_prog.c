
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prog_found_pair {char const* prog; int found; } ;
struct context {int dummy; } ;
typedef int atf_fs_path_t ;
typedef int atf_error_t ;
typedef int atf_dynstr_t ;


 int UNREACHABLE ;
 char* atf_env_get (char*) ;
 int atf_error_free (int ) ;
 int atf_fs_access_x ;
 int atf_fs_eaccess (int *,int ) ;
 int atf_fs_path_branch_path (int *,int *) ;
 int atf_fs_path_cstring (int *) ;
 int atf_fs_path_fini (int *) ;
 int atf_fs_path_init_fmt (int *,char*,char const*) ;
 scalar_t__ atf_fs_path_is_absolute (int *) ;
 scalar_t__ atf_is_error (int ) ;
 int atf_text_for_each_word (char const*,char*,int ,struct prog_found_pair*) ;
 int check_prog_in_dir ;
 int fail_requirement (struct context*,int *) ;
 int format_reason_fmt (int *,int *,int ,char*,char const*) ;
 int report_fatal_error (char*,char const*) ;
 int skip (struct context*,int *) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static atf_error_t
check_prog(struct context *ctx, const char *prog)
{
    atf_error_t err;
    atf_fs_path_t p;

    err = atf_fs_path_init_fmt(&p, "%s", prog);
    if (atf_is_error(err))
        goto out;

    if (atf_fs_path_is_absolute(&p)) {
        err = atf_fs_eaccess(&p, atf_fs_access_x);
        if (atf_is_error(err)) {
            atf_dynstr_t reason;

            atf_error_free(err);
            atf_fs_path_fini(&p);
            format_reason_fmt(&reason, ((void*)0), 0, "The required program %s could "
                "not be found", prog);
            skip(ctx, &reason);
        }
    } else {
        const char *path = atf_env_get("PATH");
        struct prog_found_pair pf;
        atf_fs_path_t bp;

        err = atf_fs_path_branch_path(&p, &bp);
        if (atf_is_error(err))
            goto out_p;

        if (strcmp(atf_fs_path_cstring(&bp), ".") != 0) {
            atf_fs_path_fini(&bp);
            atf_fs_path_fini(&p);

            report_fatal_error("Relative paths are not allowed when searching "
                "for a program (%s)", prog);
            UNREACHABLE;
        }

        pf.prog = prog;
        pf.found = 0;
        err = atf_text_for_each_word(path, ":", check_prog_in_dir, &pf);
        if (atf_is_error(err))
            goto out_bp;

        if (!pf.found) {
            atf_dynstr_t reason;

            atf_fs_path_fini(&bp);
            atf_fs_path_fini(&p);
            format_reason_fmt(&reason, ((void*)0), 0, "The required program %s could "
                "not be found in the PATH", prog);
            fail_requirement(ctx, &reason);
        }

out_bp:
        atf_fs_path_fini(&bp);
    }

out_p:
    atf_fs_path_fini(&p);
out:
    return err;
}
