; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_sfq.c_sfq_dec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_sfq.c_sfq_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfq_sched_data = type { i64, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfq_sched_data*, i64)* @sfq_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfq_dec(%struct.sfq_sched_data* %0, i64 %1) #0 {
  %3 = alloca %struct.sfq_sched_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.sfq_sched_data* %0, %struct.sfq_sched_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %8 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %15 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %23 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i64 %21, i64* %27, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %30 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i64 %28, i64* %34, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %2
  %39 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %40 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %43 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  %50 = icmp eq i64 %41, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %38
  %52 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %53 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %51, %38, %2
  %57 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %3, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @sfq_link(%struct.sfq_sched_data* %57, i64 %58)
  ret void
}

declare dso_local i32 @sfq_link(%struct.sfq_sched_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
