; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_sfq.c_sfq_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_sfq.c_sfq_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i64 }
%struct.sfq_sched_data = type { i32, i64, i32, i32, i32 }
%struct.tc_sfq_qopt = type { i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@SFQ_DEPTH = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @sfq_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfq_change(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.sfq_sched_data*, align 8
  %7 = alloca %struct.tc_sfq_qopt*, align 8
  %8 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %9 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %10 = call %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc* %9)
  store %struct.sfq_sched_data* %10, %struct.sfq_sched_data** %6, align 8
  %11 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %12 = call %struct.tc_sfq_qopt* @nla_data(%struct.nlattr* %11)
  store %struct.tc_sfq_qopt* %12, %struct.tc_sfq_qopt** %7, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %14 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i64 @nla_attr_size(i32 24)
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %110

21:                                               ; preds = %2
  %22 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %23 = call i32 @sch_tree_lock(%struct.Qdisc* %22)
  %24 = load %struct.tc_sfq_qopt*, %struct.tc_sfq_qopt** %7, align 8
  %25 = getelementptr inbounds %struct.tc_sfq_qopt, %struct.tc_sfq_qopt* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %34

29:                                               ; preds = %21
  %30 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %31 = call i32 @qdisc_dev(%struct.Qdisc* %30)
  %32 = call i32 @psched_mtu(i32 %31)
  %33 = sext i32 %32 to i64
  br label %34

34:                                               ; preds = %29, %28
  %35 = phi i64 [ %26, %28 ], [ %33, %29 ]
  %36 = trunc i64 %35 to i32
  %37 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %38 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 8
  %39 = load %struct.tc_sfq_qopt*, %struct.tc_sfq_qopt** %7, align 8
  %40 = getelementptr inbounds %struct.tc_sfq_qopt, %struct.tc_sfq_qopt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @HZ, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %45 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.tc_sfq_qopt*, %struct.tc_sfq_qopt** %7, align 8
  %47 = getelementptr inbounds %struct.tc_sfq_qopt, %struct.tc_sfq_qopt* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %34
  %51 = load i32, i32* @u32, align 4
  %52 = load %struct.tc_sfq_qopt*, %struct.tc_sfq_qopt** %7, align 8
  %53 = getelementptr inbounds %struct.tc_sfq_qopt, %struct.tc_sfq_qopt* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SFQ_DEPTH, align 8
  %56 = sub nsw i64 %55, 1
  %57 = call i64 @min_t(i32 %51, i64 %54, i64 %56)
  %58 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %59 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %50, %34
  %61 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %62 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %75, %60
  %66 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %67 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = zext i32 %69 to i64
  %71 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %72 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %70, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %77 = call i32 @sfq_drop(%struct.Qdisc* %76)
  br label %65

78:                                               ; preds = %65
  %79 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %82 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sub i32 %80, %84
  %86 = call i32 @qdisc_tree_decrease_qlen(%struct.Qdisc* %79, i32 %85)
  %87 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %88 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %87, i32 0, i32 3
  %89 = call i32 @del_timer(i32* %88)
  %90 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %91 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %107

94:                                               ; preds = %78
  %95 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %96 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %95, i32 0, i32 3
  %97 = load i64, i64* @jiffies, align 8
  %98 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %99 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %97, %101
  %103 = call i32 @mod_timer(i32* %96, i64 %102)
  %104 = call i32 (...) @net_random()
  %105 = load %struct.sfq_sched_data*, %struct.sfq_sched_data** %6, align 8
  %106 = getelementptr inbounds %struct.sfq_sched_data, %struct.sfq_sched_data* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %94, %78
  %108 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %109 = call i32 @sch_tree_unlock(%struct.Qdisc* %108)
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %107, %18
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.sfq_sched_data* @qdisc_priv(%struct.Qdisc*) #1

declare dso_local %struct.tc_sfq_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local i64 @nla_attr_size(i32) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @psched_mtu(i32) #1

declare dso_local i32 @qdisc_dev(%struct.Qdisc*) #1

declare dso_local i64 @min_t(i32, i64, i64) #1

declare dso_local i32 @sfq_drop(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_tree_decrease_qlen(%struct.Qdisc*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @net_random(...) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
