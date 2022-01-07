; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_delete_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_qfq.c_qfq_delete_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.qfq_sched = type { i32 }
%struct.qfq_class = type { i64, i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64)* @qfq_delete_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qfq_delete_class(%struct.Qdisc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qfq_sched*, align 8
  %7 = alloca %struct.qfq_class*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %9 = call %struct.qfq_sched* @qdisc_priv(%struct.Qdisc* %8)
  store %struct.qfq_sched* %9, %struct.qfq_sched** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = inttoptr i64 %10 to %struct.qfq_class*
  store %struct.qfq_class* %11, %struct.qfq_class** %7, align 8
  %12 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %13 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %38

19:                                               ; preds = %2
  %20 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %21 = call i32 @sch_tree_lock(%struct.Qdisc* %20)
  %22 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %23 = call i32 @qfq_purge_queue(%struct.qfq_class* %22)
  %24 = load %struct.qfq_sched*, %struct.qfq_sched** %6, align 8
  %25 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %24, i32 0, i32 0
  %26 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %27 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %26, i32 0, i32 2
  %28 = call i32 @qdisc_class_hash_remove(i32* %25, i32* %27)
  %29 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %30 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %30, align 8
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %37 = call i32 @sch_tree_unlock(%struct.Qdisc* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %19, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.qfq_sched* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @qfq_purge_queue(%struct.qfq_class*) #1

declare dso_local i32 @qdisc_class_hash_remove(i32*, i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
