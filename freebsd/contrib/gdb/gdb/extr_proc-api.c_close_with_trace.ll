; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_proc-api.c_close_with_trace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_proc-api.c_close_with_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@procfs_trace = common dso_local global i64 0, align 8
@info_verbose = common dso_local global i64 0, align 8
@procfs_file = common dso_local global i64 0, align 8
@stdout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"%s:%d -- \00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"[close FAILED! (%s)]\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"%d = close (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_with_trace(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 (...) @prepare_to_trace()
  store i64 0, i64* @errno, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @close(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i64, i64* @procfs_trace, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %62

13:                                               ; preds = %3
  %14 = load i64, i64* @info_verbose, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load i64, i64* @procfs_file, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i64, i64* @procfs_file, align 8
  br label %23

21:                                               ; preds = %16
  %22 = load i64, i64* @stdout, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i64 [ %20, %19 ], [ %22, %21 ]
  %25 = load i8*, i8** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 (i64, i8*, ...) @fprintf(i64 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %13
  %29 = load i64, i64* @errno, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i64, i64* @procfs_file, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i64, i64* @procfs_file, align 8
  br label %38

36:                                               ; preds = %31
  %37 = load i64, i64* @stdout, align 8
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i64 [ %35, %34 ], [ %37, %36 ]
  %40 = load i64, i64* @errno, align 8
  %41 = call i8* @safe_strerror(i64 %40)
  %42 = call i32 (i64, i8*, ...) @fprintf(i64 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %55

43:                                               ; preds = %28
  %44 = load i64, i64* @procfs_file, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i64, i64* @procfs_file, align 8
  br label %50

48:                                               ; preds = %43
  %49 = load i64, i64* @stdout, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i64 [ %47, %46 ], [ %49, %48 ]
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i64, i8*, ...) @fprintf(i64 %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %38
  %56 = load i64, i64* @procfs_file, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i64, i64* @procfs_file, align 8
  %60 = call i32 @fflush(i64 %59)
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %3
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @prepare_to_trace(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @fprintf(i64, i8*, ...) #1

declare dso_local i8* @safe_strerror(i64) #1

declare dso_local i32 @fflush(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
