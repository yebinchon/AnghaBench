; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_graft.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_graft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.htb_class = type { %struct.TYPE_7__, %struct.TYPE_5__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.Qdisc* }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@pfifo_qdisc_ops = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, i64, %struct.Qdisc*, %struct.Qdisc**)* @htb_graft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htb_graft(%struct.Qdisc* %0, i64 %1, %struct.Qdisc* %2, %struct.Qdisc** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca %struct.Qdisc**, align 8
  %10 = alloca %struct.htb_class*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %8, align 8
  store %struct.Qdisc** %3, %struct.Qdisc*** %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = inttoptr i64 %11 to %struct.htb_class*
  store %struct.htb_class* %12, %struct.htb_class** %10, align 8
  %13 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %14 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %70

20:                                               ; preds = %4
  %21 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %22 = icmp eq %struct.Qdisc* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %25 = call i32 @qdisc_dev(%struct.Qdisc* %24)
  %26 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %27 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %30 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.Qdisc* @qdisc_create_dflt(i32 %25, i32 %28, i32* @pfifo_qdisc_ops, i32 %32)
  store %struct.Qdisc* %33, %struct.Qdisc** %8, align 8
  %34 = icmp eq %struct.Qdisc* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i32, i32* @ENOBUFS, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %70

38:                                               ; preds = %23, %20
  %39 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %40 = call i32 @sch_tree_lock(%struct.Qdisc* %39)
  %41 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %42 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.Qdisc*, %struct.Qdisc** %44, align 8
  %46 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  store %struct.Qdisc* %45, %struct.Qdisc** %46, align 8
  %47 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  %48 = load %struct.htb_class*, %struct.htb_class** %10, align 8
  %49 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store %struct.Qdisc* %47, %struct.Qdisc** %51, align 8
  %52 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  %53 = load %struct.Qdisc*, %struct.Qdisc** %52, align 8
  %54 = icmp ne %struct.Qdisc* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %38
  %56 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  %57 = load %struct.Qdisc*, %struct.Qdisc** %56, align 8
  %58 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  %59 = load %struct.Qdisc*, %struct.Qdisc** %58, align 8
  %60 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @qdisc_tree_decrease_qlen(%struct.Qdisc* %57, i32 %62)
  %64 = load %struct.Qdisc**, %struct.Qdisc*** %9, align 8
  %65 = load %struct.Qdisc*, %struct.Qdisc** %64, align 8
  %66 = call i32 @qdisc_reset(%struct.Qdisc* %65)
  br label %67

67:                                               ; preds = %55, %38
  %68 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %69 = call i32 @sch_tree_unlock(%struct.Qdisc* %68)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %67, %35, %17
  %71 = load i32, i32* %5, align 4
  ret i32 %71
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
