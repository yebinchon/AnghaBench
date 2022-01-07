; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_graft.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.cbq_class = type { i64, %struct.Qdisc*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@TC_POLICE_RECLASSIFY = common dso_local global i64 0, align 8
@cbq_reshape_fail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**)* @cbq_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbq_graft(%struct.Qdisc* %0, i64 %1, %struct.Qdisc* %2, %struct.Qdisc** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca %struct.Qdisc**, align 8
  %10 = alloca %struct.cbq_class*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %8, align 8
  store %struct.Qdisc** %3, %struct.Qdisc*** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = inttoptr i64 %11 to %struct.cbq_class*
  store %struct.cbq_class* %12, %struct.cbq_class** %10, align 8
  %13 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %14 = icmp eq %struct.Qdisc* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %4
  %16 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %17 = call i32 @qdisc_dev(%struct.Qdisc* %16)
  %18 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %19 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cbq_class*, %struct.cbq_class** %10, align 8
  %22 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.Qdisc* @qdisc_create_dflt(i32 %17, i32 %20, i32* @pfifo_qdisc_ops, i32 %24)
  store %struct.Qdisc* %25, %struct.Qdisc** %8, align 8
  %26 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %27 = icmp eq %struct.Qdisc* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  %29 = load i32, i32* @ENOBUFS, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %56

31:                                               ; preds = %15
  br label %33

32:                                               ; preds = %4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %35 = call i32 @sch_tree_lock(%struct.Qdisc* %34)
  %36 = load %struct.cbq_class*, %struct.cbq_class** %10, align 8
  %37 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %36, i32 0, i32 1
  %38 = load %struct.Qdisc*, %struct.Qdisc** %37, align 8
  %39 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  store %struct.Qdisc* %38, %struct.Qdisc** %39, align 8
  %40 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %41 = load %struct.cbq_class*, %struct.cbq_class** %10, align 8
  %42 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %41, i32 0, i32 1
  store %struct.Qdisc* %40, %struct.Qdisc** %42, align 8
  %43 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  %44 = load %struct.Qdisc*, %struct.Qdisc** %43, align 8
  %45 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  %46 = load %struct.Qdisc*, %struct.Qdisc** %45, align 8
  %47 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @qdisc_tree_decrease_qlen(%struct.Qdisc* %44, i32 %49)
  %51 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  %52 = load %struct.Qdisc*, %struct.Qdisc** %51, align 8
  %53 = call i32 @qdisc_reset(%struct.Qdisc* %52)
  %54 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %55 = call i32 @sch_tree_unlock(%struct.Qdisc* %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %33, %28
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.Qdisc* @qdisc_create_dflt(i32, i32, i32*, i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_tree_decrease_qlen(%struct.Qdisc*, i32) #1

declare dso_local i32 @qdisc_reset(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
