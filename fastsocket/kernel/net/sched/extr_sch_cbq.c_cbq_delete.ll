; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.cbq_sched_data = type { %struct.cbq_class*, %struct.cbq_class*, %struct.cbq_class*, %struct.cbq_class }
%struct.cbq_class = type { i64, i64, i32, i64, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64)* @cbq_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbq_delete(%struct.Qdisc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cbq_sched_data*, align 8
  %7 = alloca %struct.cbq_class*, align 8
  %8 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = call %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.cbq_sched_data* %10, %struct.cbq_sched_data** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = inttoptr i64 %11 to %struct.cbq_class*
  store %struct.cbq_class* %12, %struct.cbq_class** %7, align 8
  %13 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %14 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %2
  %18 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %19 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %24 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %25 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %24, i32 0, i32 3
  %26 = icmp eq %struct.cbq_class* %23, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %17, %2
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %101

30:                                               ; preds = %22
  %31 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %32 = call i32 @sch_tree_lock(%struct.Qdisc* %31)
  %33 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %34 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %33, i32 0, i32 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %40 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %39, i32 0, i32 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = call i32 @qdisc_reset(%struct.TYPE_5__* %41)
  %43 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %44 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %43, i32 0, i32 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @qdisc_tree_decrease_qlen(%struct.TYPE_5__* %45, i32 %46)
  %48 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %49 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %30
  %53 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %54 = call i32 @cbq_deactivate_class(%struct.cbq_class* %53)
  br label %55

55:                                               ; preds = %52, %30
  %56 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %57 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %56, i32 0, i32 1
  %58 = load %struct.cbq_class*, %struct.cbq_class** %57, align 8
  %59 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %60 = icmp eq %struct.cbq_class* %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %63 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %62, i32 0, i32 2
  %64 = load %struct.cbq_class*, %struct.cbq_class** %63, align 8
  %65 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %66 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %65, i32 0, i32 1
  store %struct.cbq_class* %64, %struct.cbq_class** %66, align 8
  br label %67

67:                                               ; preds = %61, %55
  %68 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %69 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %68, i32 0, i32 2
  %70 = load %struct.cbq_class*, %struct.cbq_class** %69, align 8
  %71 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %72 = icmp eq %struct.cbq_class* %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %75 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %74, i32 0, i32 2
  store %struct.cbq_class* null, %struct.cbq_class** %75, align 8
  %76 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %77 = getelementptr inbounds %struct.cbq_sched_data, %struct.cbq_sched_data* %76, i32 0, i32 1
  store %struct.cbq_class* null, %struct.cbq_class** %77, align 8
  br label %78

78:                                               ; preds = %73, %67
  %79 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %80 = call i32 @cbq_unlink_class(%struct.cbq_class* %79)
  %81 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %82 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @cbq_adjust_levels(i32 %83)
  %85 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %86 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %88 = call i32 @cbq_sync_defmap(%struct.cbq_class* %87)
  %89 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %6, align 8
  %90 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %91 = call i32 @cbq_rmprio(%struct.cbq_sched_data* %89, %struct.cbq_class* %90)
  %92 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %93 = call i32 @sch_tree_unlock(%struct.Qdisc* %92)
  %94 = load %struct.cbq_class*, %struct.cbq_class** %7, align 8
  %95 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add nsw i64 %96, -1
  store i64 %97, i64* %95, align 8
  %98 = icmp eq i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @BUG_ON(i32 %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %78, %27
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_reset(%struct.TYPE_5__*) #1

declare dso_local i32 @qdisc_tree_decrease_qlen(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @cbq_deactivate_class(%struct.cbq_class*) #1

declare dso_local i32 @cbq_unlink_class(%struct.cbq_class*) #1

declare dso_local i32 @cbq_adjust_levels(i32) #1

declare dso_local i32 @cbq_sync_defmap(%struct.cbq_class*) #1

declare dso_local i32 @cbq_rmprio(%struct.cbq_sched_data*, %struct.cbq_class*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
