; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_clear_dead_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_clear_dead_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.k_itimer = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32* }
%union.cpu_time_count = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.k_itimer*, i32)* @clear_dead_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_dead_task(%struct.k_itimer* %0, i32 %1) #0 {
  %3 = alloca %union.cpu_time_count, align 4
  %4 = alloca %struct.k_itimer*, align 8
  %5 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %3, i32 0, i32 0
  store i32 %1, i32* %5, align 4
  store %struct.k_itimer* %0, %struct.k_itimer** %4, align 8
  %6 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %7 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @put_task_struct(i32* %10)
  %12 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %13 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %17 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %20 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = getelementptr inbounds %union.cpu_time_count, %union.cpu_time_count* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @cpu_time_sub(i32 %18, i32 %23, i32 %25)
  %27 = load %struct.k_itimer*, %struct.k_itimer** %4, align 8
  %28 = getelementptr inbounds %struct.k_itimer, %struct.k_itimer* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 8
  ret void
}

declare dso_local i32 @put_task_struct(i32*) #1

declare dso_local i32 @cpu_time_sub(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
