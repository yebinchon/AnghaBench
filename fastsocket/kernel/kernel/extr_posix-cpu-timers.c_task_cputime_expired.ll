; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_task_cputime_expired.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_task_cputime_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_cputime = type { i64, i32, i32 }

@cputime_zero = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_cputime*, %struct.task_cputime*)* @task_cputime_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @task_cputime_expired(%struct.task_cputime* %0, %struct.task_cputime* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_cputime*, align 8
  %5 = alloca %struct.task_cputime*, align 8
  store %struct.task_cputime* %0, %struct.task_cputime** %4, align 8
  store %struct.task_cputime* %1, %struct.task_cputime** %5, align 8
  %6 = load %struct.task_cputime*, %struct.task_cputime** %5, align 8
  %7 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @cputime_zero, align 4
  %10 = call i32 @cputime_eq(i32 %8, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = load %struct.task_cputime*, %struct.task_cputime** %4, align 8
  %14 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.task_cputime*, %struct.task_cputime** %5, align 8
  %17 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @cputime_ge(i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %58

22:                                               ; preds = %12, %2
  %23 = load %struct.task_cputime*, %struct.task_cputime** %5, align 8
  %24 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @cputime_zero, align 4
  %27 = call i32 @cputime_eq(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %43, label %29

29:                                               ; preds = %22
  %30 = load %struct.task_cputime*, %struct.task_cputime** %4, align 8
  %31 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.task_cputime*, %struct.task_cputime** %4, align 8
  %34 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @cputime_add(i32 %32, i32 %35)
  %37 = load %struct.task_cputime*, %struct.task_cputime** %5, align 8
  %38 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @cputime_ge(i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %58

43:                                               ; preds = %29, %22
  %44 = load %struct.task_cputime*, %struct.task_cputime** %5, align 8
  %45 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.task_cputime*, %struct.task_cputime** %4, align 8
  %50 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.task_cputime*, %struct.task_cputime** %5, align 8
  %53 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %58

57:                                               ; preds = %48, %43
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %56, %42, %21
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @cputime_eq(i32, i32) #1

declare dso_local i64 @cputime_ge(i32, i32) #1

declare dso_local i32 @cputime_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
