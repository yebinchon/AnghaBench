; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_init_rt_rq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sched.c_init_rt_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_rq = type { %struct.rq*, i64, i32, i64, i64, i64, i32, i64, i64, %struct.TYPE_2__, %struct.rt_prio_array }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rt_prio_array = type { i32, i64 }
%struct.rq = type { i32 }

@MAX_RT_PRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt_rq*, %struct.rq*)* @init_rt_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_rt_rq(%struct.rt_rq* %0, %struct.rq* %1) #0 {
  %3 = alloca %struct.rt_rq*, align 8
  %4 = alloca %struct.rq*, align 8
  %5 = alloca %struct.rt_prio_array*, align 8
  %6 = alloca i32, align 4
  store %struct.rt_rq* %0, %struct.rt_rq** %3, align 8
  store %struct.rq* %1, %struct.rq** %4, align 8
  %7 = load %struct.rt_rq*, %struct.rt_rq** %3, align 8
  %8 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %7, i32 0, i32 10
  store %struct.rt_prio_array* %8, %struct.rt_prio_array** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %26, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MAX_RT_PRIO, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %9
  %14 = load %struct.rt_prio_array*, %struct.rt_prio_array** %5, align 8
  %15 = getelementptr inbounds %struct.rt_prio_array, %struct.rt_prio_array* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = call i32 @INIT_LIST_HEAD(i64 %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.rt_prio_array*, %struct.rt_prio_array** %5, align 8
  %23 = getelementptr inbounds %struct.rt_prio_array, %struct.rt_prio_array* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @__clear_bit(i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %13
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %9

29:                                               ; preds = %9
  %30 = load i32, i32* @MAX_RT_PRIO, align 4
  %31 = load %struct.rt_prio_array*, %struct.rt_prio_array** %5, align 8
  %32 = getelementptr inbounds %struct.rt_prio_array, %struct.rt_prio_array* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @__set_bit(i32 %30, i32 %33)
  %35 = load %struct.rt_rq*, %struct.rt_rq** %3, align 8
  %36 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.rt_rq*, %struct.rt_rq** %3, align 8
  %38 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.rt_rq*, %struct.rt_rq** %3, align 8
  %40 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.rt_rq*, %struct.rt_rq** %3, align 8
  %42 = getelementptr inbounds %struct.rt_rq, %struct.rt_rq* %41, i32 0, i32 2
  %43 = call i32 @spin_lock_init(i32* %42)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i64) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
