; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_check_class_changed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_check_class_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rq = type { i32 }
%struct.task_struct = type { %struct.sched_class* }
%struct.sched_class = type { i32 (%struct.rq.0*, %struct.task_struct*, i32, i32)*, i32 (%struct.rq.1*, %struct.task_struct*, i32)*, i32 (%struct.rq.2*, %struct.task_struct*, i32)* }
%struct.rq.0 = type opaque
%struct.rq.1 = type opaque
%struct.rq.2 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rq*, %struct.task_struct*, %struct.sched_class*, i32, i32)* @check_class_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_class_changed(%struct.rq* %0, %struct.task_struct* %1, %struct.sched_class* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.rq*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.sched_class*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rq* %0, %struct.rq** %6, align 8
  store %struct.task_struct* %1, %struct.task_struct** %7, align 8
  store %struct.sched_class* %2, %struct.sched_class** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.sched_class*, %struct.sched_class** %8, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 0
  %14 = load %struct.sched_class*, %struct.sched_class** %13, align 8
  %15 = icmp ne %struct.sched_class* %11, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %5
  %17 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %18 = call i32 @sched_autogroup_move_task(%struct.task_struct* %17)
  %19 = load %struct.sched_class*, %struct.sched_class** %8, align 8
  %20 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %19, i32 0, i32 2
  %21 = load i32 (%struct.rq.2*, %struct.task_struct*, i32)*, i32 (%struct.rq.2*, %struct.task_struct*, i32)** %20, align 8
  %22 = icmp ne i32 (%struct.rq.2*, %struct.task_struct*, i32)* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load %struct.sched_class*, %struct.sched_class** %8, align 8
  %25 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %24, i32 0, i32 2
  %26 = load i32 (%struct.rq.2*, %struct.task_struct*, i32)*, i32 (%struct.rq.2*, %struct.task_struct*, i32)** %25, align 8
  %27 = load %struct.rq*, %struct.rq** %6, align 8
  %28 = bitcast %struct.rq* %27 to %struct.rq.2*
  %29 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 %26(%struct.rq.2* %28, %struct.task_struct* %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %16
  %33 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %34 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %33, i32 0, i32 0
  %35 = load %struct.sched_class*, %struct.sched_class** %34, align 8
  %36 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %35, i32 0, i32 1
  %37 = load i32 (%struct.rq.1*, %struct.task_struct*, i32)*, i32 (%struct.rq.1*, %struct.task_struct*, i32)** %36, align 8
  %38 = load %struct.rq*, %struct.rq** %6, align 8
  %39 = bitcast %struct.rq* %38 to %struct.rq.1*
  %40 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 %37(%struct.rq.1* %39, %struct.task_struct* %40, i32 %41)
  br label %55

43:                                               ; preds = %5
  %44 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %45 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %44, i32 0, i32 0
  %46 = load %struct.sched_class*, %struct.sched_class** %45, align 8
  %47 = getelementptr inbounds %struct.sched_class, %struct.sched_class* %46, i32 0, i32 0
  %48 = load i32 (%struct.rq.0*, %struct.task_struct*, i32, i32)*, i32 (%struct.rq.0*, %struct.task_struct*, i32, i32)** %47, align 8
  %49 = load %struct.rq*, %struct.rq** %6, align 8
  %50 = bitcast %struct.rq* %49 to %struct.rq.0*
  %51 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 %48(%struct.rq.0* %50, %struct.task_struct* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %43, %32
  ret void
}

declare dso_local i32 @sched_autogroup_move_task(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
