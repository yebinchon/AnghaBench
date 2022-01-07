; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_proc-api.c_wait_with_trace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_proc-api.c_wait_with_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@procfs_trace = common dso_local global i64 0, align 8
@info_verbose = common dso_local global i64 0, align 8
@procfs_file = common dso_local global i64 0, align 8
@stdout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"%s:%d -- \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"wait (line %d) \00", align 1
@errno = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"[wait FAILED! (%s)]\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"returned pid %d, status 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait_with_trace(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = call i32 (...) @prepare_to_trace()
  %10 = load i64, i64* @procfs_trace, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %44

12:                                               ; preds = %3
  %13 = load i64, i64* @info_verbose, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %12
  %16 = load i64, i64* @procfs_file, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i64, i64* @procfs_file, align 8
  br label %22

20:                                               ; preds = %15
  %21 = load i64, i64* @stdout, align 8
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i64 [ %19, %18 ], [ %21, %20 ]
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (i64, i8*, ...) @fprintf(i64 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %12
  %28 = load i64, i64* @procfs_file, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i64, i64* @procfs_file, align 8
  br label %34

32:                                               ; preds = %27
  %33 = load i64, i64* @stdout, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  %36 = load i32, i32* %6, align 4
  %37 = call i32 (i64, i8*, ...) @fprintf(i64 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i64, i64* @procfs_file, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i64, i64* @procfs_file, align 8
  %42 = call i32 @fflush(i64 %41)
  br label %43

43:                                               ; preds = %40, %34
  br label %44

44:                                               ; preds = %43, %3
  store i64 0, i64* @errno, align 8
  %45 = call i32 @wait(i32* %8)
  store i32 %45, i32* %7, align 4
  %46 = load i64, i64* @procfs_trace, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %82

48:                                               ; preds = %44
  %49 = load i64, i64* @errno, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load i64, i64* @procfs_file, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i64, i64* @procfs_file, align 8
  br label %58

56:                                               ; preds = %51
  %57 = load i64, i64* @stdout, align 8
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i64 [ %55, %54 ], [ %57, %56 ]
  %60 = load i64, i64* @errno, align 8
  %61 = call i8* @safe_strerror(i64 %60)
  %62 = call i32 (i64, i8*, ...) @fprintf(i64 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  br label %75

63:                                               ; preds = %48
  %64 = load i64, i64* @procfs_file, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i64, i64* @procfs_file, align 8
  br label %70

68:                                               ; preds = %63
  %69 = load i64, i64* @stdout, align 8
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i64 [ %67, %66 ], [ %69, %68 ]
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 (i64, i8*, ...) @fprintf(i64 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %70, %58
  %76 = load i64, i64* @procfs_file, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i64, i64* @procfs_file, align 8
  %80 = call i32 @fflush(i64 %79)
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81, %44
  %83 = load i32*, i32** %4, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %8, align 4
  %87 = load i32*, i32** %4, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @prepare_to_trace(...) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i32 @fflush(i64) #1

declare dso_local i32 @wait(i32*) #1

declare dso_local i8* @safe_strerror(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
