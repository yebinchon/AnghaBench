; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_proc-api.c_procfs_note.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_proc-api.c_procfs_note.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@procfs_trace = common dso_local global i64 0, align 8
@info_verbose = common dso_local global i64 0, align 8
@procfs_file = common dso_local global i64 0, align 8
@stdout = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"%s:%d -- \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @procfs_note(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = call i32 (...) @prepare_to_trace()
  %8 = load i64, i64* @procfs_trace, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %42

10:                                               ; preds = %3
  %11 = load i64, i64* @info_verbose, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load i64, i64* @procfs_file, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i64, i64* @procfs_file, align 8
  br label %20

18:                                               ; preds = %13
  %19 = load i64, i64* @stdout, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i64 [ %17, %16 ], [ %19, %18 ]
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i64, i8*, i8*, ...) @fprintf(i64 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %10
  %26 = load i64, i64* @procfs_file, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64, i64* @procfs_file, align 8
  br label %32

30:                                               ; preds = %25
  %31 = load i64, i64* @stdout, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i64 [ %29, %28 ], [ %31, %30 ]
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 (i64, i8*, i8*, ...) @fprintf(i64 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = load i64, i64* @procfs_file, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i64, i64* @procfs_file, align 8
  %40 = call i32 @fflush(i64 %39)
  br label %41

41:                                               ; preds = %38, %32
  br label %42

42:                                               ; preds = %41, %3
  ret void
}

declare dso_local i32 @prepare_to_trace(...) #1

declare dso_local i32 @fprintf(i64, i8*, i8*, ...) #1

declare dso_local i32 @fflush(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
