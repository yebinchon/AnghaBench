; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"f\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"missing pool argument\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"use 'zfs destroy' to destroy a dataset\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"could not destroy '%s': could not unmount datasets\0A\00", align 1
@log_history = common dso_local global i8* null, align 8
@history_str = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_destroy(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i8*, i8** @B_FALSE, align 8
  store i8* %11, i8** %6, align 8
  br label %12

12:                                               ; preds = %28, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %7, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %28 [
    i32 102, label %19
    i32 63, label %21
  ]

19:                                               ; preds = %17
  %20 = load i8*, i8** @B_TRUE, align 8
  store i8* %20, i8** %6, align 8
  br label %28

21:                                               ; preds = %17
  %22 = load i32, i32* @stderr, align 4
  %23 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @optopt, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* %23, i32 %24)
  %26 = load i8*, i8** @B_FALSE, align 8
  %27 = call i32 @usage(i8* %26)
  br label %28

28:                                               ; preds = %21, %17, %19
  br label %12

29:                                               ; preds = %12
  %30 = load i64, i64* @optind, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = sub nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %4, align 4
  %35 = load i64, i64* @optind, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 %35
  store i8** %37, i8*** %5, align 8
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 1
  br i1 %39, label %40, label %46

40:                                               ; preds = %29
  %41 = load i32, i32* @stderr, align 4
  %42 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* %42)
  %44 = load i8*, i8** @B_FALSE, align 8
  %45 = call i32 @usage(i8* %44)
  br label %46

46:                                               ; preds = %40, %29
  %47 = load i32, i32* %4, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* @stderr, align 4
  %51 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %50, i8* %51)
  %53 = load i8*, i8** @B_FALSE, align 8
  %54 = call i32 @usage(i8* %53)
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %8, align 8
  %59 = load i32, i32* @g_zfs, align 4
  %60 = load i8*, i8** %8, align 8
  %61 = call i32* @zpool_open_canfail(i32 %59, i8* %60)
  store i32* %61, i32** %9, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %55
  %64 = load i8*, i8** %8, align 8
  %65 = call i32* @strchr(i8* %64, i8 signext 47)
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* @stderr, align 4
  %69 = call i8* @gettext(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* %69)
  br label %71

71:                                               ; preds = %67, %63
  store i32 1, i32* %3, align 4
  br label %93

72:                                               ; preds = %55
  %73 = load i32*, i32** %9, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i64 @zpool_disable_datasets(i32* %73, i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load i32, i32* @stderr, align 4
  %79 = call i8* @gettext(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %80 = load i32*, i32** %9, align 8
  %81 = call i8* @zpool_get_name(i32* %80)
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %78, i8* %79, i8* %81)
  store i32 1, i32* %3, align 4
  br label %93

83:                                               ; preds = %72
  %84 = load i8*, i8** @B_FALSE, align 8
  store i8* %84, i8** @log_history, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* @history_str, align 4
  %87 = call i64 @zpool_destroy(i32* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %10, align 4
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @zpool_close(i32* %90)
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %83, %77, %71
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32* @zpool_open_canfail(i32, i8*) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i64 @zpool_disable_datasets(i32*, i8*) #1

declare dso_local i8* @zpool_get_name(i32*) #1

declare dso_local i64 @zpool_destroy(i32*, i32) #1

declare dso_local i32 @zpool_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
