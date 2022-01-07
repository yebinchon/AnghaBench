; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c___setscheduler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c___setscheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { i32 }
%struct.task_struct = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@fair_sched_class = common dso_local global i32 0, align 4
@rt_sched_class = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq*, %struct.task_struct*, i32, i32)* @__setscheduler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__setscheduler(%struct.rq* %0, %struct.task_struct* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rq*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rq* %0, %struct.rq** %5, align 8
  store %struct.task_struct* %1, %struct.task_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %10 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %16 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %26 [
    i32 129, label %20
    i32 132, label %20
    i32 130, label %20
    i32 131, label %23
    i32 128, label %23
  ]

20:                                               ; preds = %4, %4, %4
  %21 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %22 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %21, i32 0, i32 4
  store i32* @fair_sched_class, i32** %22, align 8
  br label %26

23:                                               ; preds = %4, %4
  %24 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 4
  store i32* @rt_sched_class, i32** %25, align 8
  br label %26

26:                                               ; preds = %4, %23, %20
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %29 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %31 = call i32 @normal_prio(%struct.task_struct* %30)
  %32 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %33 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %35 = call i32 @rt_mutex_getprio(%struct.task_struct* %34)
  %36 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %37 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %39 = call i32 @set_load_weight(%struct.task_struct* %38)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @normal_prio(%struct.task_struct*) #1

declare dso_local i32 @rt_mutex_getprio(%struct.task_struct*) #1

declare dso_local i32 @set_load_weight(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
