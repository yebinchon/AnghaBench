; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_leaf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_leaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.Qdisc_class_ops* }
%struct.Qdisc_class_ops = type { i64 (%struct.Qdisc.0*, i32)*, i32 (%struct.Qdisc.1*, i64)*, %struct.Qdisc* (%struct.Qdisc*, i64)* }
%struct.Qdisc.0 = type opaque
%struct.Qdisc.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Qdisc* (%struct.Qdisc*, i32)* @qdisc_leaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Qdisc* @qdisc_leaf(%struct.Qdisc* %0, i32 %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.Qdisc*, align 8
  %8 = alloca %struct.Qdisc_class_ops*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %12, align 8
  store %struct.Qdisc_class_ops* %13, %struct.Qdisc_class_ops** %8, align 8
  %14 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %8, align 8
  %15 = icmp eq %struct.Qdisc_class_ops* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.Qdisc* null, %struct.Qdisc** %3, align 8
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %8, align 8
  %19 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %18, i32 0, i32 0
  %20 = load i64 (%struct.Qdisc.0*, i32)*, i64 (%struct.Qdisc.0*, i32)** %19, align 8
  %21 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %22 = bitcast %struct.Qdisc* %21 to %struct.Qdisc.0*
  %23 = load i32, i32* %5, align 4
  %24 = call i64 %20(%struct.Qdisc.0* %22, i32 %23)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store %struct.Qdisc* null, %struct.Qdisc** %3, align 8
  br label %43

28:                                               ; preds = %17
  %29 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %8, align 8
  %30 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %29, i32 0, i32 2
  %31 = load %struct.Qdisc* (%struct.Qdisc*, i64)*, %struct.Qdisc* (%struct.Qdisc*, i64)** %30, align 8
  %32 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call %struct.Qdisc* %31(%struct.Qdisc* %32, i64 %33)
  store %struct.Qdisc* %34, %struct.Qdisc** %7, align 8
  %35 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %8, align 8
  %36 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %35, i32 0, i32 1
  %37 = load i32 (%struct.Qdisc.1*, i64)*, i32 (%struct.Qdisc.1*, i64)** %36, align 8
  %38 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %39 = bitcast %struct.Qdisc* %38 to %struct.Qdisc.1*
  %40 = load i64, i64* %6, align 8
  %41 = call i32 %37(%struct.Qdisc.1* %39, i64 %40)
  %42 = load %struct.Qdisc*, %struct.Qdisc** %7, align 8
  store %struct.Qdisc* %42, %struct.Qdisc** %3, align 8
  br label %43

43:                                               ; preds = %28, %27, %16
  %44 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  ret %struct.Qdisc* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
