; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_checkpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_zpool_do_checkpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"discard\00", align 1
@no_argument = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c":d\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"missing pool argument\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [133 x i8] c"'zpool checkpoint' doesn't work on datasets. To save the state of a dataset from a specific point in time please use 'zfs snapshot'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_do_checkpoint(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x %struct.option], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = bitcast [2 x %struct.option]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 64, i1 false)
  %13 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %11, i64 0, i64 0
  %14 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %14, align 16
  %15 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 1
  %16 = load i32, i32* @no_argument, align 4
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %15, align 8
  %18 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 3
  store i32 100, i32* %18, align 8
  %19 = getelementptr inbounds %struct.option, %struct.option* %13, i64 1
  %20 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 1
  store i8 0, i8* %20, align 8
  %21 = load i64, i64* @B_FALSE, align 8
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %39, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %11, i64 0, i64 0
  %26 = call i32 @getopt_long(i32 %23, i8** %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.option* %25, i32* null)
  store i32 %26, i32* %9, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load i32, i32* %9, align 4
  switch i32 %29, label %39 [
    i32 100, label %30
    i32 63, label %32
  ]

30:                                               ; preds = %28
  %31 = load i64, i64* @B_TRUE, align 8
  store i64 %31, i64* %6, align 8
  br label %39

32:                                               ; preds = %28
  %33 = load i32, i32* @stderr, align 4
  %34 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @optopt, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* %34, i32 %35)
  %37 = load i64, i64* @B_FALSE, align 8
  %38 = call i32 @usage(i64 %37)
  br label %39

39:                                               ; preds = %32, %28, %30
  br label %22

40:                                               ; preds = %22
  %41 = load i64, i64* @optind, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = sub nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %4, align 4
  %46 = load i64, i64* @optind, align 8
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 %46
  store i8** %48, i8*** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 1
  br i1 %50, label %51, label %57

51:                                               ; preds = %40
  %52 = load i32, i32* @stderr, align 4
  %53 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %52, i8* %53)
  %55 = load i64, i64* @B_FALSE, align 8
  %56 = call i32 @usage(i64 %55)
  br label %57

57:                                               ; preds = %51, %40
  %58 = load i32, i32* %4, align 4
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* @stderr, align 4
  %62 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %63 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* %62)
  %64 = load i64, i64* @B_FALSE, align 8
  %65 = call i32 @usage(i64 %64)
  br label %66

66:                                               ; preds = %60, %57
  %67 = load i8**, i8*** %5, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %7, align 8
  %70 = load i32, i32* @g_zfs, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = call i32* @zpool_open(i32 %70, i8* %71)
  store i32* %72, i32** %8, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %66
  %75 = load i8*, i8** %7, align 8
  %76 = call i32* @strchr(i8* %75, i8 signext 47)
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* @stderr, align 4
  %80 = call i8* @gettext(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.5, i64 0, i64 0))
  %81 = call i32 (i32, i8*, ...) @fprintf(i32 %79, i8* %80)
  br label %82

82:                                               ; preds = %78, %74
  store i32 1, i32* %3, align 4
  br label %100

83:                                               ; preds = %66
  %84 = load i64, i64* %6, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32*, i32** %8, align 8
  %88 = call i64 @zpool_discard_checkpoint(i32* %87)
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %10, align 4
  br label %96

91:                                               ; preds = %83
  %92 = load i32*, i32** %8, align 8
  %93 = call i64 @zpool_checkpoint(i32* %92)
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i32
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %91, %86
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @zpool_close(i32* %97)
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %82
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @usage(i64) #2

declare dso_local i32* @zpool_open(i32, i8*) #2

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i64 @zpool_discard_checkpoint(i32*) #2

declare dso_local i64 @zpool_checkpoint(i32*) #2

declare dso_local i32 @zpool_close(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
