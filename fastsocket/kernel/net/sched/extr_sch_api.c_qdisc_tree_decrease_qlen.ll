; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_tree_decrease_qlen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_tree_decrease_qlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.Qdisc_class_ops* }
%struct.Qdisc_class_ops = type { i64 (%struct.Qdisc.0*, i64)*, i32 (%struct.Qdisc.1*, i64)*, i32 (%struct.Qdisc.2*, i64)* }
%struct.Qdisc.0 = type opaque
%struct.Qdisc.1 = type opaque
%struct.Qdisc.2 = type opaque

@TC_H_INGRESS = common dso_local global i64 0, align 8
@TC_H_ROOT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qdisc_tree_decrease_qlen(%struct.Qdisc* %0, i32 %1) #0 {
  %3 = alloca %struct.Qdisc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Qdisc_class_ops*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %77

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %70, %11
  %13 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %14 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %77

17:                                               ; preds = %12
  %18 = load i64, i64* %7, align 8
  %19 = call i64 @TC_H_MAJ(i64 %18)
  %20 = load i64, i64* @TC_H_INGRESS, align 8
  %21 = call i64 @TC_H_MAJ(i64 %20)
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %77

24:                                               ; preds = %17
  %25 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %26 = call i32 @qdisc_dev(%struct.Qdisc* %25)
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @TC_H_MAJ(i64 %27)
  %29 = call %struct.Qdisc* @qdisc_lookup(i32 %26, i64 %28)
  store %struct.Qdisc* %29, %struct.Qdisc** %3, align 8
  %30 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %31 = icmp eq %struct.Qdisc* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @TC_H_ROOT, align 8
  %35 = icmp ne i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON(i32 %36)
  br label %77

38:                                               ; preds = %24
  %39 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %40 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %42, align 8
  store %struct.Qdisc_class_ops* %43, %struct.Qdisc_class_ops** %5, align 8
  %44 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %5, align 8
  %45 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %44, i32 0, i32 2
  %46 = load i32 (%struct.Qdisc.2*, i64)*, i32 (%struct.Qdisc.2*, i64)** %45, align 8
  %47 = icmp ne i32 (%struct.Qdisc.2*, i64)* %46, null
  br i1 %47, label %48, label %70

48:                                               ; preds = %38
  %49 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %5, align 8
  %50 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %49, i32 0, i32 0
  %51 = load i64 (%struct.Qdisc.0*, i64)*, i64 (%struct.Qdisc.0*, i64)** %50, align 8
  %52 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %53 = bitcast %struct.Qdisc* %52 to %struct.Qdisc.0*
  %54 = load i64, i64* %7, align 8
  %55 = call i64 %51(%struct.Qdisc.0* %53, i64 %54)
  store i64 %55, i64* %6, align 8
  %56 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %5, align 8
  %57 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %56, i32 0, i32 2
  %58 = load i32 (%struct.Qdisc.2*, i64)*, i32 (%struct.Qdisc.2*, i64)** %57, align 8
  %59 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %60 = bitcast %struct.Qdisc* %59 to %struct.Qdisc.2*
  %61 = load i64, i64* %6, align 8
  %62 = call i32 %58(%struct.Qdisc.2* %60, i64 %61)
  %63 = load %struct.Qdisc_class_ops*, %struct.Qdisc_class_ops** %5, align 8
  %64 = getelementptr inbounds %struct.Qdisc_class_ops, %struct.Qdisc_class_ops* %63, i32 0, i32 1
  %65 = load i32 (%struct.Qdisc.1*, i64)*, i32 (%struct.Qdisc.1*, i64)** %64, align 8
  %66 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %67 = bitcast %struct.Qdisc* %66 to %struct.Qdisc.1*
  %68 = load i64, i64* %6, align 8
  %69 = call i32 %65(%struct.Qdisc.1* %67, i64 %68)
  br label %70

70:                                               ; preds = %48, %38
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.Qdisc*, %struct.Qdisc** %3, align 8
  %73 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sub i32 %75, %71
  store i32 %76, i32* %74, align 8
  br label %12

77:                                               ; preds = %10, %23, %32, %12
  ret void
}

declare dso_local i64 @TC_H_MAJ(i64) #1

declare dso_local %struct.Qdisc* @qdisc_lookup(i32, i64) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
