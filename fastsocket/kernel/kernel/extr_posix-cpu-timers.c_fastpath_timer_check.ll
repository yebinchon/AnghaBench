; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_fastpath_timer_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_fastpath_timer_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.signal_struct*, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.signal_struct = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.task_cputime = type { i32, i32, i32 }

@RLIMIT_CPU = common dso_local global i64 0, align 8
@RLIM_INFINITY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*)* @fastpath_timer_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fastpath_timer_check(%struct.task_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.signal_struct*, align 8
  %5 = alloca %struct.task_cputime, align 4
  %6 = alloca %struct.task_cputime, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  %7 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %8 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %66

13:                                               ; preds = %1
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 1
  %16 = call i32 @task_cputime_zero(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %38, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %5, i32 0, i32 0
  %20 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %21 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %19, align 4
  %24 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %5, i32 0, i32 1
  %25 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %26 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %24, align 4
  %28 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %5, i32 0, i32 2
  %29 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %30 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %28, align 4
  %32 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 1
  %34 = call i64 @task_cputime_expired(%struct.task_cputime* %5, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %66

37:                                               ; preds = %18
  br label %38

38:                                               ; preds = %37, %13
  %39 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %40 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %39, i32 0, i32 0
  %41 = load %struct.signal_struct*, %struct.signal_struct** %40, align 8
  store %struct.signal_struct* %41, %struct.signal_struct** %4, align 8
  %42 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %43 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %42, i32 0, i32 1
  %44 = call i32 @task_cputime_zero(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %38
  %47 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %48 = call i32 @thread_group_cputimer(%struct.task_struct* %47, %struct.task_cputime* %6)
  %49 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %50 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %49, i32 0, i32 1
  %51 = call i64 @task_cputime_expired(%struct.task_cputime* %6, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %46
  store i32 1, i32* %2, align 4
  br label %66

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %38
  %56 = load %struct.signal_struct*, %struct.signal_struct** %4, align 8
  %57 = getelementptr inbounds %struct.signal_struct, %struct.signal_struct* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i64, i64* @RLIMIT_CPU, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RLIM_INFINITY, align 8
  %64 = icmp ne i64 %62, %63
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %55, %53, %36, %12
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @task_cputime_zero(i32*) #1

declare dso_local i64 @task_cputime_expired(%struct.task_cputime*, i32*) #1

declare dso_local i32 @thread_group_cputimer(%struct.task_struct*, %struct.task_cputime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
