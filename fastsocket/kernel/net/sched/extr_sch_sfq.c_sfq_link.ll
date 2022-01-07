; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_sfq.c_sfq_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_sfq.c_sfq_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfq_sched_data = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@SFQ_DEPTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfq_sched_data*, i64)* @sfq_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfq_link(%struct.sfq_sched_data* %0, i64 %1) #0 {
  %3 = alloca %struct.sfq_sched_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.sfq_sched_data* %0, %struct.sfq_sched_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %9 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = load i64, i64* %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SFQ_DEPTH, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %5, align 8
  %19 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %20 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %29 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i64 %27, i64* %33, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %36 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i64 %34, i64* %40, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %43 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i64 %41, i64* %47, align 8
  %48 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %49 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i64 %41, i64* %53, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
