; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_sfq.c_sfq_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_sfq.c_sfq_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.qdisc_walker = type { i32, i64, i64, i64 (%struct.Qdisc.0*, i32, %struct.qdisc_walker*)* }
%struct.Qdisc.0 = type opaque
%struct.sfq_sched_data = type { i64* }

@SFQ_HASH_DIVISOR = common dso_local global i32 0, align 4
@SFQ_DEPTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Qdisc*, %struct.qdisc_walker*)* @sfq_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfq_walk(%struct.Qdisc* %0, %struct.qdisc_walker* %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.qdisc_walker*, align 8
  %5 = alloca %struct.sfq_sched_data*, align 8
  %6 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store %struct.qdisc_walker* %1, %struct.qdisc_walker** %4, align 8
  %7 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %8 = call %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc* %7)
  store %struct.sfq_sched_data* %8, %struct.sfq_sched_data** %5, align 8
  %9 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %10 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %64

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %61, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @SFQ_HASH_DIVISOR, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %64

19:                                               ; preds = %15
  %20 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %5, align 8
  %21 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SFQ_DEPTH, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %19
  %30 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %31 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %34 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %29, %19
  %38 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %39 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  br label %61

42:                                               ; preds = %29
  %43 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %44 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %43, i32 0, i32 3
  %45 = load i64 (%struct.Qdisc.0*, i32, %struct.qdisc_walker*)*, i64 (%struct.Qdisc.0*, i32, %struct.qdisc_walker*)** %44, align 8
  %46 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %47 = bitcast %struct.Qdisc* %46 to %struct.Qdisc.0*
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %48, 1
  %50 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %51 = call i64 %45(%struct.Qdisc.0* %47, i32 %49, %struct.qdisc_walker* %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %55 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %64

56:                                               ; preds = %42
  %57 = load %struct.qdisc_walker*, %struct.qdisc_walker** %4, align 8
  %58 = getelementptr inbounds %struct.qdisc_walker, %struct.qdisc_walker* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %56, %37
  %62 = load i32, i32* %6, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %15

64:                                               ; preds = %13, %53, %15
  ret void
}

declare dso_local %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
