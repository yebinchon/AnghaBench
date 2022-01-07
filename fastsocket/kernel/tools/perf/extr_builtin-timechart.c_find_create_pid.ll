; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_find_create_pid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-timechart.c_find_create_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_pid = type { i32, %struct.per_pid* }

@all_data = common dso_local global %struct.per_pid* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.per_pid* (i32)* @find_create_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.per_pid* @find_create_pid(i32 %0) #0 {
  %2 = alloca %struct.per_pid*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.per_pid*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.per_pid*, %struct.per_pid** @all_data, align 8
  store %struct.per_pid* %5, %struct.per_pid** %4, align 8
  br label %6

6:                                                ; preds = %17, %1
  %7 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %8 = icmp ne %struct.per_pid* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %11 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  store %struct.per_pid* %16, %struct.per_pid** %2, align 8
  br label %35

17:                                               ; preds = %9
  %18 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %19 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %18, i32 0, i32 1
  %20 = load %struct.per_pid*, %struct.per_pid** %19, align 8
  store %struct.per_pid* %20, %struct.per_pid** %4, align 8
  br label %6

21:                                               ; preds = %6
  %22 = call %struct.per_pid* @zalloc(i32 16)
  store %struct.per_pid* %22, %struct.per_pid** %4, align 8
  %23 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %24 = icmp ne %struct.per_pid* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %29 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.per_pid*, %struct.per_pid** @all_data, align 8
  %31 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  %32 = getelementptr inbounds %struct.per_pid, %struct.per_pid* %31, i32 0, i32 1
  store %struct.per_pid* %30, %struct.per_pid** %32, align 8
  %33 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  store %struct.per_pid* %33, %struct.per_pid** @all_data, align 8
  %34 = load %struct.per_pid*, %struct.per_pid** %4, align 8
  store %struct.per_pid* %34, %struct.per_pid** %2, align 8
  br label %35

35:                                               ; preds = %21, %15
  %36 = load %struct.per_pid*, %struct.per_pid** %2, align 8
  ret %struct.per_pid* %36
}

declare dso_local %struct.per_pid* @zalloc(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
