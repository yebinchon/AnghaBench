; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_rt.c_watchdog.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched_rt.c_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { i32 }
%struct.task_struct = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i64 }

@RLIMIT_RTTIME = common dso_local global i64 0, align 8
@RLIM_INFINITY = common dso_local global i64 0, align 8
@USEC_PER_SEC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq*, %struct.task_struct*)* @watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @watchdog(%struct.rq* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.rq*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.rq* %0, %struct.rq** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 3
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = icmp ne %struct.TYPE_9__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %63

13:                                               ; preds = %2
  %14 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 3
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = load i64, i64* @RLIMIT_RTTIME, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  %23 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %24 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %23, i32 0, i32 3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = load i64, i64* @RLIMIT_RTTIME, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @RLIM_INFINITY, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %13
  %36 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @min(i64 %41, i64 %42)
  %44 = load i32, i32* @USEC_PER_SEC, align 4
  %45 = load i32, i32* @HZ, align 4
  %46 = sdiv i32 %44, %45
  %47 = call i64 @DIV_ROUND_UP(i32 %43, i32 %46)
  store i64 %47, i64* %7, align 8
  %48 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %49 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %35
  %55 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %56 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %60 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  br label %62

62:                                               ; preds = %54, %35
  br label %63

63:                                               ; preds = %12, %62, %13
  ret void
}

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
