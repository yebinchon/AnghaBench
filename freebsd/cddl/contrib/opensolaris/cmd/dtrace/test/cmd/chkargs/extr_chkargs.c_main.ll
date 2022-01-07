; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/cmd/chkargs/extr_chkargs.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/dtrace/test/cmd/chkargs/extr_chkargs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_progname = common dso_local global i8* null, align 8
@DTRACE_VERSION = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: failed to open dtrace: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"evx:\00", align 1
@g_errexit = common dso_local global i32 0, align 4
@g_verbose = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: failed to set option -x %s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Usage: %s [-ev] [-x opt[=arg]] [probedesc]\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@DTRACE_PROBESPEC_NAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"%s: invalid probe description %s: %s\0A\00", align 1
@g_fd = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"\0ATotal probes: %d\0A\00", align 1
@g_count = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"Total errors: %d\0A\0A\00", align 1
@g_errs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %7, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** @g_progname, align 8
  %15 = load i32, i32* @DTRACE_VERSION, align 4
  %16 = call i32* @dtrace_open(i32 %15, i32 0, i32* %9)
  store i32* %16, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32, i32* @stderr, align 4
  %20 = load i8*, i8** @g_progname, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i8* @dtrace_errmsg(i32* %21, i32 %22)
  %24 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %20, i8* %23)
  store i32 1, i32* %3, align 4
  br label %114

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %66, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = call i32 @getopt(i32 %27, i8** %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %29, i32* %10, align 4
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %67

31:                                               ; preds = %26
  %32 = load i32, i32* %10, align 4
  switch i32 %32, label %62 [
    i32 101, label %33
    i32 118, label %36
    i32 120, label %39
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* @g_errexit, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* @g_errexit, align 4
  br label %66

36:                                               ; preds = %31
  %37 = load i32, i32* @g_verbose, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @g_verbose, align 4
  br label %66

39:                                               ; preds = %31
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 61)
  store i8* %41, i8** %11, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %11, align 8
  store i8 0, i8* %44, align 1
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i32*, i32** %8, align 8
  %48 = load i8*, i8** @optarg, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @dtrace_setopt(i32* %47, i8* %48, i8* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %46
  %53 = load i32, i32* @stderr, align 4
  %54 = load i8*, i8** @g_progname, align 8
  %55 = load i8*, i8** @optarg, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @dtrace_errno(i32* %57)
  %59 = call i8* @dtrace_errmsg(i32* %56, i32 %58)
  %60 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %54, i8* %55, i8* %59)
  store i32 2, i32* %3, align 4
  br label %114

61:                                               ; preds = %46
  br label %66

62:                                               ; preds = %31
  %63 = load i32, i32* @stderr, align 4
  %64 = load i8*, i8** @g_progname, align 8
  %65 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %64)
  store i32 2, i32* %3, align 4
  br label %114

66:                                               ; preds = %61, %36, %33
  br label %26

67:                                               ; preds = %26
  %68 = load i64, i64* @optind, align 8
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 %68
  store i8** %70, i8*** %5, align 8
  %71 = load i64, i64* @optind, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = sub nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %67
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* @DTRACE_PROBESPEC_NAME, align 4
  %81 = load i8**, i8*** %5, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @dtrace_str2desc(i32* %79, i32 %80, i8* %83, i32* %6)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %78
  %87 = load i32, i32* @stderr, align 4
  %88 = load i8*, i8** @g_progname, align 8
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = call i32 @dtrace_errno(i32* %93)
  %95 = call i8* @dtrace_errmsg(i32* %92, i32 %94)
  %96 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %88, i8* %91, i8* %95)
  store i32 2, i32* %3, align 4
  br label %114

97:                                               ; preds = %78
  store i32* %6, i32** %7, align 8
  br label %98

98:                                               ; preds = %97, %67
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @dtrace_ctlfd(i32* %99)
  store i32 %100, i32* @g_fd, align 4
  %101 = load i32*, i32** %8, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* @probe, align 4
  %104 = call i32 @dtrace_probe_iter(i32* %101, i32* %102, i32 %103, i32* null)
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @dtrace_close(i32* %105)
  %107 = load i32, i32* @g_count, align 4
  %108 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @g_errs, align 4
  %110 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @g_errs, align 4
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %98, %86, %62, %52, %18
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32* @dtrace_open(i32, i32, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i8* @dtrace_errmsg(i32*, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @dtrace_setopt(i32*, i8*, i8*) #1

declare dso_local i32 @dtrace_errno(i32*) #1

declare dso_local i64 @dtrace_str2desc(i32*, i32, i8*, i32*) #1

declare dso_local i32 @dtrace_ctlfd(i32*) #1

declare dso_local i32 @dtrace_probe_iter(i32*, i32*, i32, i32*) #1

declare dso_local i32 @dtrace_close(i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
