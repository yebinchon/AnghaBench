; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_graft_class.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_hfsc.c_hfsc_graft_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i32 }
%struct.hfsc_class = type { i64, %struct.Qdisc*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@noop_qdisc = common dso_local global %struct.Qdisc zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**)* @hfsc_graft_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsc_graft_class(%struct.Qdisc* %0, i64 %1, %struct.Qdisc* %2, %struct.Qdisc** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca %struct.Qdisc**, align 8
  %10 = alloca %struct.hfsc_class*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %8, align 8
  store %struct.Qdisc** %3, %struct.Qdisc*** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = inttoptr i64 %11 to %struct.hfsc_class*
  store %struct.hfsc_class* %12, %struct.hfsc_class** %10, align 8
  %13 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  %14 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %53

20:                                               ; preds = %4
  %21 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %22 = icmp eq %struct.Qdisc* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %25 = call i32 @qdisc_dev(%struct.Qdisc* %24)
  %26 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %27 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  %30 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.Qdisc* @qdisc_create_dflt(i32 %25, i32 %28, i32* @pfifo_qdisc_ops, i32 %32)
  store %struct.Qdisc* %33, %struct.Qdisc** %8, align 8
  %34 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %35 = icmp eq %struct.Qdisc* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  store %struct.Qdisc* @noop_qdisc, %struct.Qdisc** %8, align 8
  br label %37

37:                                               ; preds = %36, %23
  br label %38

38:                                               ; preds = %37, %20
  %39 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %40 = call i32 @sch_tree_lock(%struct.Qdisc* %39)
  %41 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %42 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  %43 = call i32 @hfsc_purge_queue(%struct.Qdisc* %41, %struct.hfsc_class* %42)
  %44 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  %45 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %44, i32 0, i32 1
  %46 = load %struct.Qdisc*, %struct.Qdisc** %45, align 8
  %47 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  store %struct.Qdisc* %46, %struct.Qdisc** %47, align 8
  %48 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %49 = load %struct.hfsc_class*, %struct.hfsc_class** %10, align 8
  %50 = getelementptr inbounds %struct.hfsc_class, %struct.hfsc_class* %49, i32 0, i32 1
  store %struct.Qdisc* %48, %struct.Qdisc** %50, align 8
  %51 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %52 = call i32 @sch_tree_unlock(%struct.Qdisc* %51)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %38, %17
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.Qdisc* @qdisc_create_dflt(i32, i32, i32*, i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @hfsc_purge_queue(%struct.Qdisc*, %struct.hfsc_class*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
