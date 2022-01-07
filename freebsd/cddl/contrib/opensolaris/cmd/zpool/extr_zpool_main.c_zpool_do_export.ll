; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_export.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@B_FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"fF\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"missing pool argument\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@log_history = common dso_local global i8* null, align 8
@history_str = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_export(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %11 = load i8*, i8** @B_FALSE, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** @B_FALSE, align 8
  store i8* %12, i8** %6, align 8
  br label %13

13:                                               ; preds = %31, %2
  %14 = load i32, i32* %3, align 4
  %15 = load i8**, i8*** %4, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %32

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %31 [
    i32 102, label %20
    i32 70, label %22
    i32 63, label %24
  ]

20:                                               ; preds = %18
  %21 = load i8*, i8** @B_TRUE, align 8
  store i8* %21, i8** %5, align 8
  br label %31

22:                                               ; preds = %18
  %23 = load i8*, i8** @B_TRUE, align 8
  store i8* %23, i8** %6, align 8
  br label %31

24:                                               ; preds = %18
  %25 = load i32, i32* @stderr, align 4
  %26 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @optopt, align 4
  %28 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* %26, i32 %27)
  %29 = load i8*, i8** @B_FALSE, align 8
  %30 = call i32 @usage(i8* %29)
  br label %31

31:                                               ; preds = %24, %18, %22, %20
  br label %13

32:                                               ; preds = %13
  %33 = load i64, i64* @optind, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %3, align 4
  %38 = load i64, i64* @optind, align 8
  %39 = load i8**, i8*** %4, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 %38
  store i8** %40, i8*** %4, align 8
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %43, label %49

43:                                               ; preds = %32
  %44 = load i32, i32* @stderr, align 4
  %45 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* %45)
  %47 = load i8*, i8** @B_FALSE, align 8
  %48 = call i32 @usage(i8* %47)
  br label %49

49:                                               ; preds = %43, %32
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %94, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %97

54:                                               ; preds = %50
  %55 = load i32, i32* @g_zfs, align 4
  %56 = load i8**, i8*** %4, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8*, i8** %56, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32* @zpool_open_canfail(i32 %55, i8* %60)
  store i32* %61, i32** %8, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  store i32 1, i32* %9, align 4
  br label %94

64:                                               ; preds = %54
  %65 = load i32*, i32** %8, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i64 @zpool_disable_datasets(i32* %65, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  store i32 1, i32* %9, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = call i32 @zpool_close(i32* %70)
  br label %94

72:                                               ; preds = %64
  %73 = load i8*, i8** @B_FALSE, align 8
  store i8* %73, i8** @log_history, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* @history_str, align 4
  %79 = call i64 @zpool_export_force(i32* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 1, i32* %9, align 4
  br label %82

82:                                               ; preds = %81, %76
  br label %91

83:                                               ; preds = %72
  %84 = load i32*, i32** %8, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = load i32, i32* @history_str, align 4
  %87 = call i64 @zpool_export(i32* %84, i8* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 1, i32* %9, align 4
  br label %90

90:                                               ; preds = %89, %83
  br label %91

91:                                               ; preds = %90, %82
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 @zpool_close(i32* %92)
  br label %94

94:                                               ; preds = %91, %69, %63
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %50

97:                                               ; preds = %50
  %98 = load i32, i32* %9, align 4
  ret i32 %98
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32* @zpool_open_canfail(i32, i8*) #1

declare dso_local i64 @zpool_disable_datasets(i32*, i8*) #1

declare dso_local i32 @zpool_close(i32*) #1

declare dso_local i64 @zpool_export_force(i32*, i32) #1

declare dso_local i64 @zpool_export(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
