; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_update_eligible.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_update_eligible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_sched = type { i64*, i32 }
%struct.qfq_group = type { i32 }

@IR = common dso_local global i64 0, align 8
@IB = common dso_local global i64 0, align 8
@ER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_sched*, i32)* @qfq_update_eligible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_update_eligible(%struct.qfq_sched* %0, i32 %1) #0 {
  %3 = alloca %struct.qfq_sched*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qfq_group*, align 8
  %6 = alloca i64, align 8
  store %struct.qfq_sched* %0, %struct.qfq_sched** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %8 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = load i64, i64* @IR, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %14 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @IB, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = or i64 %12, %18
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %2
  %23 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %24 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* @ER, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %22
  %31 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call %struct.qfq_group* @qfq_ffs(%struct.qfq_sched* %31, i64 %32)
  store %struct.qfq_group* %33, %struct.qfq_group** %5, align 8
  %34 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %35 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %38 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @qfq_gt(i32 %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %44 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %47 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %42, %30
  br label %49

49:                                               ; preds = %48, %22
  %50 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @qfq_make_eligible(%struct.qfq_sched* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %2
  ret void
}

declare dso_local %struct.qfq_group* @qfq_ffs(%struct.qfq_sched*, i64) #1

declare dso_local i64 @qfq_gt(i32, i32) #1

declare dso_local i32 @qfq_make_eligible(%struct.qfq_sched*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
