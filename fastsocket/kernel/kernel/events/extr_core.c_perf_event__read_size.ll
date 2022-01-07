; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event__read_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event__read_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@PERF_FORMAT_TOTAL_TIME_ENABLED = common dso_local global i32 0, align 4
@PERF_FORMAT_TOTAL_TIME_RUNNING = common dso_local global i32 0, align 4
@PERF_FORMAT_ID = common dso_local global i32 0, align 4
@PERF_FORMAT_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @perf_event__read_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event__read_size(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  store i32 4, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %6 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_ENABLED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %20 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_RUNNING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %18
  %32 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %33 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PERF_FORMAT_ID, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 %41, 4
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %31
  %45 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %46 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PERF_FORMAT_GROUP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %44
  %53 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %54 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, 4
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %52, %44
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %5, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %74 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
