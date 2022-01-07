; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_ovl_rclassic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_ovl_rclassic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_class = type { i64, %struct.cbq_class*, i32 }
%struct.cbq_sched_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cbq_class*)* @cbq_ovl_rclassic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbq_ovl_rclassic(%struct.cbq_class* %0) #0 {
  %2 = alloca %struct.cbq_class*, align 8
  %3 = alloca %struct.cbq_sched_data*, align 8
  %4 = alloca %struct.cbq_class*, align 8
  store %struct.cbq_class* %0, %struct.cbq_class** %2, align 8
  %5 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %6 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.cbq_sched_data* @qdisc_priv(i32 %7)
  store %struct.cbq_sched_data* %8, %struct.cbq_sched_data** %3, align 8
  %9 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  store %struct.cbq_class* %9, %struct.cbq_class** %4, align 8
  br label %10

10:                                               ; preds = %20, %1
  %11 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %12 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %15 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store %struct.cbq_class* null, %struct.cbq_class** %2, align 8
  br label %25

19:                                               ; preds = %10
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %22 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %21, i32 0, i32 1
  %23 = load %struct.cbq_class*, %struct.cbq_class** %22, align 8
  store %struct.cbq_class* %23, %struct.cbq_class** %2, align 8
  %24 = icmp ne %struct.cbq_class* %23, null
  br i1 %24, label %10, label %25

25:                                               ; preds = %20, %18
  %26 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %27 = icmp eq %struct.cbq_class* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  store %struct.cbq_class* %29, %struct.cbq_class** %2, align 8
  br label %30

30:                                               ; preds = %28, %25
  %31 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %32 = call i32 @cbq_ovl_classic(%struct.cbq_class* %31)
  ret void
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(i32) #1

declare dso_local i32 @cbq_ovl_classic(%struct.cbq_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
