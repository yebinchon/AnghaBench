; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_draw_cpu_usage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_draw_cpu_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_pid = type { %struct.per_pid*, %struct.per_pidcomm* }
%struct.per_pidcomm = type { %struct.per_pidcomm*, i32, %struct.cpu_sample* }
%struct.cpu_sample = type { i64, %struct.cpu_sample*, i32, i32, i32 }

@all_data = common dso_local global %struct.per_pid* null, align 8
@TYPE_RUNNING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"sample\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @draw_cpu_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_cpu_usage() #0 {
  %1 = alloca %struct.per_pid*, align 8
  %2 = alloca %struct.per_pidcomm*, align 8
  %3 = alloca %struct.cpu_sample*, align 8
  %4 = load %struct.per_pid*, %struct.per_pid** @all_data, align 8
  store %struct.per_pid* %4, %struct.per_pid** %1, align 8
  br label %5

5:                                                ; preds = %50, %0
  %6 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  %7 = icmp ne %struct.per_pid* %6, null
  br i1 %7, label %8, label %54

8:                                                ; preds = %5
  %9 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  %10 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %9, i32 0, i32 1
  %11 = load %struct.per_pidcomm*, %struct.per_pidcomm** %10, align 8
  store %struct.per_pidcomm* %11, %struct.per_pidcomm** %2, align 8
  br label %12

12:                                               ; preds = %46, %8
  %13 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %14 = icmp ne %struct.per_pidcomm* %13, null
  br i1 %14, label %15, label %50

15:                                               ; preds = %12
  %16 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %17 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %16, i32 0, i32 2
  %18 = load %struct.cpu_sample*, %struct.cpu_sample** %17, align 8
  store %struct.cpu_sample* %18, %struct.cpu_sample** %3, align 8
  br label %19

19:                                               ; preds = %42, %15
  %20 = load %struct.cpu_sample*, %struct.cpu_sample** %3, align 8
  %21 = icmp ne %struct.cpu_sample* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %19
  %23 = load %struct.cpu_sample*, %struct.cpu_sample** %3, align 8
  %24 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TYPE_RUNNING, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %22
  %29 = load %struct.cpu_sample*, %struct.cpu_sample** %3, align 8
  %30 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.cpu_sample*, %struct.cpu_sample** %3, align 8
  %33 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cpu_sample*, %struct.cpu_sample** %3, align 8
  %36 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %39 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @svg_process(i32 %31, i32 %34, i32 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %28, %22
  %43 = load %struct.cpu_sample*, %struct.cpu_sample** %3, align 8
  %44 = getelementptr inbounds %struct.cpu_sample, %struct.cpu_sample* %43, i32 0, i32 1
  %45 = load %struct.cpu_sample*, %struct.cpu_sample** %44, align 8
  store %struct.cpu_sample* %45, %struct.cpu_sample** %3, align 8
  br label %19

46:                                               ; preds = %19
  %47 = load %struct.per_pidcomm*, %struct.per_pidcomm** %2, align 8
  %48 = getelementptr inbounds %struct.per_pidcomm, %struct.per_pidcomm* %47, i32 0, i32 0
  %49 = load %struct.per_pidcomm*, %struct.per_pidcomm** %48, align 8
  store %struct.per_pidcomm* %49, %struct.per_pidcomm** %2, align 8
  br label %12

50:                                               ; preds = %12
  %51 = load %struct.per_pid*, %struct.per_pid** %1, align 8
  %52 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %51, i32 0, i32 0
  %53 = load %struct.per_pid*, %struct.per_pid** %52, align 8
  store %struct.per_pid* %53, %struct.per_pid** %1, align 8
  br label %5

54:                                               ; preds = %5
  ret void
}

declare dso_local i32 @svg_process(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
