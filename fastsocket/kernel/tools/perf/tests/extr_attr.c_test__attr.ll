; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_attr.c_test__attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/tests/extr_attr.c_test__attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"./tests\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"./perf\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s/tests\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%s/perf\00", align 1
@BINDIR = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c" (ommitted)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test__attr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.stat, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = load i32, i32* @PATH_MAX, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  %11 = load i32, i32* @PATH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %14 = call i32 @lstat(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.stat* %2)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %0
  %17 = call i32 @run_dir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %17, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %35

18:                                               ; preds = %0
  %19 = load i32, i32* @PATH_MAX, align 4
  %20 = call i8* (...) @perf_exec_path()
  %21 = call i32 @snprintf(i8* %13, i32 %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @PATH_MAX, align 4
  %23 = load i8*, i8** @BINDIR, align 8
  %24 = call i32 @snprintf(i8* %10, i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %23)
  %25 = call i32 @lstat(i8* %13, %struct.stat* %2)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %18
  %28 = call i32 @lstat(i8* %10, %struct.stat* %2)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = call i32 @run_dir(i8* %13, i8* %10)
  store i32 %31, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %35

32:                                               ; preds = %27, %18
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  store i32 1, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %30, %16
  %36 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %36)
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @run_dir(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i8* @perf_exec_path(...) #2

declare dso_local i32 @fprintf(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
