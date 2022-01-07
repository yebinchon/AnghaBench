; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_activate_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_activate_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_class = type { i32, %struct.cbq_class*, i32 }
%struct.cbq_sched_data = type { i32, %struct.cbq_class** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cbq_class*)* @cbq_activate_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbq_activate_class(%struct.cbq_class* %0) #0 {
  %2 = alloca %struct.cbq_class*, align 8
  %3 = alloca %struct.cbq_sched_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cbq_class*, align 8
  store %struct.cbq_class* %0, %struct.cbq_class** %2, align 8
  %6 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %7 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.cbq_sched_data* @qdisc_priv(i32 %8)
  store %struct.cbq_sched_data* %9, %struct.cbq_sched_data** %3, align 8
  %10 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %11 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %14 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %13, i32 0, i32 1
  %15 = load %struct.cbq_class**, %struct.cbq_class*** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %15, i64 %17
  %19 = load %struct.cbq_class*, %struct.cbq_class** %18, align 8
  store %struct.cbq_class* %19, %struct.cbq_class** %5, align 8
  %20 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %21 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %22 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %21, i32 0, i32 1
  %23 = load %struct.cbq_class**, %struct.cbq_class*** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.cbq_class*, %struct.cbq_class** %23, i64 %25
  store %struct.cbq_class* %20, %struct.cbq_class** %26, align 8
  %27 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %28 = icmp ne %struct.cbq_class* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %1
  %30 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %31 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %30, i32 0, i32 1
  %32 = load %struct.cbq_class*, %struct.cbq_class** %31, align 8
  %33 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %34 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %33, i32 0, i32 1
  store %struct.cbq_class* %32, %struct.cbq_class** %34, align 8
  %35 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %36 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %37 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %36, i32 0, i32 1
  store %struct.cbq_class* %35, %struct.cbq_class** %37, align 8
  br label %48

38:                                               ; preds = %1
  %39 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %40 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %41 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %40, i32 0, i32 1
  store %struct.cbq_class* %39, %struct.cbq_class** %41, align 8
  %42 = load i32, i32* %4, align 4
  %43 = shl i32 1, %42
  %44 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %45 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %38, %29
  ret void
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
