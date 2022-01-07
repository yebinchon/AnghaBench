; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_syscall.c_task_current_syscall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_syscall.c_task_current_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @task_current_syscall(%struct.task_struct* %0, i64* %1, i64* %2, i32 %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %16 = load i32, i32* %11, align 4
  %17 = icmp ugt i32 %16, 6
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %82

24:                                               ; preds = %6
  %25 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %26 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %27 = icmp eq %struct.task_struct* %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = load i64*, i64** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = load i64*, i64** %12, align 8
  %34 = load i64*, i64** %13, align 8
  %35 = call i32 @collect_syscall(%struct.task_struct* %29, i64* %30, i64* %31, i32 %32, i64* %33, i64* %34)
  store i32 %35, i32* %7, align 4
  br label %82

36:                                               ; preds = %24
  %37 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* %14, align 8
  %41 = icmp ne i64 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @EAGAIN, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %82

49:                                               ; preds = %36
  %50 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %51 = load i64, i64* %14, align 8
  %52 = call i64 @wait_task_inactive(%struct.task_struct* %50, i64 %51)
  store i64 %52, i64* %15, align 8
  %53 = load i64, i64* %15, align 8
  %54 = icmp ne i64 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %49
  %60 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = load i64*, i64** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = load i64*, i64** %12, align 8
  %65 = load i64*, i64** %13, align 8
  %66 = call i32 @collect_syscall(%struct.task_struct* %60, i64* %61, i64* %62, i32 %63, i64* %64, i64* %65)
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %59
  %70 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %71 = load i64, i64* %14, align 8
  %72 = call i64 @wait_task_inactive(%struct.task_struct* %70, i64 %71)
  %73 = load i64, i64* %15, align 8
  %74 = icmp ne i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69, %59, %49
  %79 = load i32, i32* @EAGAIN, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %7, align 4
  br label %82

81:                                               ; preds = %69
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %81, %78, %46, %28, %21
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @collect_syscall(%struct.task_struct*, i64*, i64*, i32, i64*, i64*) #1

declare dso_local i64 @wait_task_inactive(%struct.task_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
