; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_proc-api.c_proc_prettyfprint_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_proc-api.c_proc_prettyfprint_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@procfs_trace = common dso_local global i64 0, align 8
@procfs_file = common dso_local global i64 0, align 8
@stdout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"Thread %d: \00", align 1
@PR_STOPPED = common dso_local global i64 0, align 8
@PR_ISTOP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_prettyfprint_status(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = call i32 (...) @prepare_to_trace()
  %10 = load i64, i64* @procfs_trace, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %62

12:                                               ; preds = %4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

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
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @fprintf(i64 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %12
  %27 = load i64, i64* @procfs_file, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i64, i64* @procfs_file, align 8
  br label %33

31:                                               ; preds = %26
  %32 = load i64, i64* @stdout, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i64 [ %30, %29 ], [ %32, %31 ]
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @proc_prettyfprint_flags(i64 %34, i64 %35, i32 0)
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @PR_STOPPED, align 8
  %39 = load i64, i64* @PR_ISTOP, align 8
  %40 = or i64 %38, %39
  %41 = and i64 %37, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %33
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
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @proc_prettyfprint_why(i64 %51, i32 %52, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %50, %33
  %56 = load i64, i64* @procfs_file, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i64, i64* @procfs_file, align 8
  %60 = call i32 @fflush(i64 %59)
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %4
  ret void
}

declare dso_local i32 @prepare_to_trace(...) #1

declare dso_local i32 @fprintf(i64, i8*, i32) #1

declare dso_local i32 @proc_prettyfprint_flags(i64, i64, i32) #1

declare dso_local i32 @proc_prettyfprint_why(i64, i32, i32, i32) #1

declare dso_local i32 @fflush(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
