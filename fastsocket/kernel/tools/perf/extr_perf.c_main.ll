; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_perf.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_perf.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SC_PAGE_SIZE = common dso_local global i32 0, align 4
@page_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"perf-help\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"perf-\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"cannot handle %s internally\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"\0A usage: %s\0A\0A\00", align 1
@perf_usage_string = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"\0A %s\0A\0A\00", align 1
@perf_more_info_string = common dso_local global i8* null, align 8
@main.done_help = internal global i32 0, align 4
@main.was_alias = internal global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [60 x i8] c"Expansion of alias '%s' failed; '%s' is not a perf-command\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Failed to run command '%s': %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* @_SC_PAGE_SIZE, align 4
  %8 = call i32 @sysconf(i32 %7)
  store i32 %8, i32* @page_size, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i8* @perf_extract_argv0_path(i8* %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %16

16:                                               ; preds = %15, %2
  %17 = call i32 @debugfs_mount(i32* null)
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @prefixcmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %16
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 5
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = call i32 @handle_internal_command(i32 %27, i8** %28)
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @die(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %21, %16
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i32 1
  store i8** %34, i8*** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %4, align 4
  %37 = call i32 @handle_options(i8*** %5, i32* %4, i32* null)
  %38 = call i32 (...) @commit_pager_choice()
  %39 = call i32 (...) @set_buildid_dir()
  %40 = load i32, i32* %4, align 4
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %32
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @prefixcmp(i8* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = load i8**, i8*** %5, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  store i8* %52, i8** %50, align 8
  br label %53

53:                                               ; preds = %48, %42
  br label %61

54:                                               ; preds = %32
  %55 = load i8*, i8** @perf_usage_string, align 8
  %56 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  %57 = call i32 (...) @list_common_cmds_help()
  %58 = load i8*, i8** @perf_more_info_string, align 8
  %59 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %58)
  %60 = call i32 @exit(i32 1) #3
  unreachable

61:                                               ; preds = %53
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %6, align 8
  %65 = call i32 (...) @test_attr__init()
  %66 = call i32 (...) @setup_path()
  %67 = call i32 (...) @pthread__block_sigwinch()
  br label %68

68:                                               ; preds = %61, %94
  %69 = call i32 @run_argv(i32* %4, i8*** %5)
  store i32 %69, i32* @main.was_alias, align 4
  %70 = load i64, i64* @errno, align 8
  %71 = load i64, i64* @ENOENT, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %95

74:                                               ; preds = %68
  %75 = load i32, i32* @main.was_alias, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32, i32* @stderr, align 4
  %79 = load i8*, i8** %6, align 8
  %80 = load i8**, i8*** %5, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i64 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @fprintf(i32 %78, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i8* %79, i8* %82)
  %84 = call i32 @exit(i32 1) #3
  unreachable

85:                                               ; preds = %74
  %86 = load i32, i32* @main.done_help, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load i8*, i8** %6, align 8
  %90 = call i8* @help_unknown_cmd(i8* %89)
  %91 = load i8**, i8*** %5, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  store i8* %90, i8** %92, align 8
  store i8* %90, i8** %6, align 8
  store i32 1, i32* @main.done_help, align 4
  br label %94

93:                                               ; preds = %85
  br label %95

94:                                               ; preds = %88
  br label %68

95:                                               ; preds = %93, %73
  %96 = load i32, i32* @stderr, align 4
  %97 = load i8*, i8** %6, align 8
  %98 = load i64, i64* @errno, align 8
  %99 = call i8* @strerror(i64 %98)
  %100 = call i32 @fprintf(i32 %96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %97, i8* %99)
  ret i32 1
}

declare dso_local i32 @sysconf(i32) #1

declare dso_local i8* @perf_extract_argv0_path(i8*) #1

declare dso_local i32 @debugfs_mount(i32*) #1

declare dso_local i32 @prefixcmp(i8*, i8*) #1

declare dso_local i32 @handle_internal_command(i32, i8**) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i32 @handle_options(i8***, i32*, i32*) #1

declare dso_local i32 @commit_pager_choice(...) #1

declare dso_local i32 @set_buildid_dir(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @list_common_cmds_help(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @test_attr__init(...) #1

declare dso_local i32 @setup_path(...) #1

declare dso_local i32 @pthread__block_sigwinch(...) #1

declare dso_local i32 @run_argv(i32*, i8***) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*) #1

declare dso_local i8* @help_unknown_cmd(i8*) #1

declare dso_local i8* @strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
