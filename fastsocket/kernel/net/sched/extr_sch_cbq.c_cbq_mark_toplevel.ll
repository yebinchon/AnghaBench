; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_mark_toplevel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_mark_toplevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_sched_data = type { i32, i64, i64 }
%struct.cbq_class = type { i32, i64, %struct.cbq_class*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TCQ_F_THROTTLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cbq_sched_data*, %struct.cbq_class*)* @cbq_mark_toplevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbq_mark_toplevel(%struct.cbq_sched_data* %0, %struct.cbq_class* %1) #0 {
  %3 = alloca %struct.cbq_sched_data*, align 8
  %4 = alloca %struct.cbq_class*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.cbq_sched_data* %0, %struct.cbq_sched_data** %3, align 8
  store %struct.cbq_class* %1, %struct.cbq_class** %4, align 8
  %8 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %9 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %13 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %11, %14
  br i1 %15, label %16, label %64

16:                                               ; preds = %2
  %17 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %18 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TCQ_F_THROTTLED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %64, label %25

25:                                               ; preds = %16
  %26 = call i64 (...) @psched_get_time()
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %29 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  store i64 %31, i64* %7, align 8
  %32 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %33 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = add nsw i64 %34, %35
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %61, %25
  %38 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %39 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %45 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %3, align 8
  %48 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %64

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %52 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %51, i32 0, i32 2
  %53 = load %struct.cbq_class*, %struct.cbq_class** %52, align 8
  store %struct.cbq_class* %53, %struct.cbq_class** %4, align 8
  %54 = icmp ne %struct.cbq_class* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %58 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sgt i32 %56, %59
  br label %61

61:                                               ; preds = %55, %50
  %62 = phi i1 [ false, %50 ], [ %60, %55 ]
  br i1 %62, label %37, label %63

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %43, %63, %16, %2
  ret void
}

declare dso_local i64 @psched_get_time(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
