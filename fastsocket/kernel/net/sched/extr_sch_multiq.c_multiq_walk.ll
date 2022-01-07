; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_multiq.c_multiq_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_multiq.c_multiq_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.qdisc_walker = type { i32, i64, i64, i64 (%struct.Qdisc.0*, i32, %struct.qdisc_walker*)* }
%struct.Qdisc.0 = type opaque
%struct.multiq_sched_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, %struct.qdisc_walker*)* @multiq_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multiq_walk(%struct.Qdisc* %0, %struct.qdisc_walker* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.qdisc_walker*, align 8
  %5 = alloca %struct.multiq_sched_data*, align 8
  %6 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.qdisc_walker* %1, %struct.qdisc_walker** %4, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %8 = call %struct.multiq_sched_data* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.multiq_sched_data* %8, %struct.multiq_sched_data** %5, align 8
  %9 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %10 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %56

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %53, %14
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.multiq_sched_data*, %struct.multiq_sched_data** %5, align 8
  %18 = getelementptr inbounds %struct.multiq_sched_data, %struct.multiq_sched_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %15
  %22 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %23 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %26 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %31 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %31, align 8
  br label %53

34:                                               ; preds = %21
  %35 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %36 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %35, i32 0, i32 3
  %37 = load i64 (%struct.Qdisc.0*, i32, %struct.qdisc_walker*)*, i64 (%struct.Qdisc.0*, i32, %struct.qdisc_walker*)** %36, align 8
  %38 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %39 = bitcast %struct.Qdisc* %38 to %struct.Qdisc.0*
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  %42 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %43 = call i64 %37(%struct.Qdisc.0* %39, i32 %41, %struct.qdisc_walker* %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %47 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %56

48:                                               ; preds = %34
  %49 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %50 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %48, %29
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %15

56:                                               ; preds = %13, %45, %15
  ret void
}

declare dso_local %struct.multiq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
