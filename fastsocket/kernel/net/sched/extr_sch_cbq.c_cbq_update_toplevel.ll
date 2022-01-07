; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_update_toplevel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_update_toplevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_sched_data = type { i64 }
%struct.cbq_class = type { i64, i64, %struct.cbq_class*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PSCHED_PASTPERFECT = common dso_local global i64 0, align 8
@TC_CBQ_MAXLEVEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cbq_sched_data*, %struct.cbq_class*, %struct.cbq_class*)* @cbq_update_toplevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbq_update_toplevel(%struct.cbq_sched_data* %0, %struct.cbq_class* %1, %struct.cbq_class* %2) #0 {
  %4 = alloca %struct.cbq_sched_data*, align 8
  %5 = alloca %struct.cbq_class*, align 8
  %6 = alloca %struct.cbq_class*, align 8
  store %struct.cbq_sched_data* %0, %struct.cbq_sched_data** %4, align 8
  store %struct.cbq_class* %1, %struct.cbq_class** %5, align 8
  store %struct.cbq_class* %2, %struct.cbq_class** %6, align 8
  %7 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %8 = icmp ne %struct.cbq_class* %7, null
  br i1 %8, label %9, label %46

9:                                                ; preds = %3
  %10 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %4, align 8
  %11 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.cbq_class*, %struct.cbq_class** %6, align 8
  %14 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %9
  %18 = load %struct.cbq_class*, %struct.cbq_class** %5, align 8
  %19 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %45

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %39, %25
  %27 = load %struct.cbq_class*, %struct.cbq_class** %6, align 8
  %28 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PSCHED_PASTPERFECT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.cbq_class*, %struct.cbq_class** %6, align 8
  %34 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %4, align 8
  %37 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %46

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.cbq_class*, %struct.cbq_class** %6, align 8
  %41 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %40, i32 0, i32 2
  %42 = load %struct.cbq_class*, %struct.cbq_class** %41, align 8
  store %struct.cbq_class* %42, %struct.cbq_class** %6, align 8
  %43 = icmp ne %struct.cbq_class* %42, null
  br i1 %43, label %26, label %44

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %17
  br label %46

46:                                               ; preds = %32, %45, %9, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
