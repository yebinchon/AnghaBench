; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_stop_machine.c___stop_cpus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_stop_machine.c___stop_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.cpu_stop_done = type { i32, i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpumask*, i32, i8*)* @__stop_cpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__stop_cpus(%struct.cpumask* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.cpumask*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cpu_stop_done, align 8
  store %struct.cpumask* %0, %struct.cpumask** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %9 = call i32 @cpumask_weight(%struct.cpumask* %8)
  %10 = call i32 @cpu_stop_init_done(%struct.cpu_stop_done* %7, i32 %9)
  %11 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @queue_stop_cpus_work(%struct.cpumask* %11, i32 %12, i8* %13, %struct.cpu_stop_done* %7)
  %15 = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %7, i32 0, i32 2
  %16 = call i32 @wait_for_completion(i32* %15)
  %17 = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %7, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.cpu_stop_done, %struct.cpu_stop_done* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  br label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ %22, %20 ], [ %25, %23 ]
  ret i32 %27
}

declare dso_local i32 @cpu_stop_init_done(%struct.cpu_stop_done*, i32) #1

declare dso_local i32 @cpumask_weight(%struct.cpumask*) #1

declare dso_local i32 @queue_stop_cpus_work(%struct.cpumask*, i32, i8*, %struct.cpu_stop_done*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
