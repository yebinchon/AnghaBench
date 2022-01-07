; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_set_wrr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_set_wrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_class = type { i64, i64, i64, i64, i64, i32 }
%struct.tc_cbq_wrropt = type { i64, i64, i64 }
%struct.cbq_sched_data = type { i32 }

@TC_CBQ_MAXPRIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cbq_class*, %struct.tc_cbq_wrropt*)* @cbq_set_wrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbq_set_wrr(%struct.cbq_class* %0, %struct.tc_cbq_wrropt* %1) #0 {
  %3 = alloca %struct.cbq_class*, align 8
  %4 = alloca %struct.tc_cbq_wrropt*, align 8
  %5 = alloca %struct.cbq_sched_data*, align 8
  store %struct.cbq_class* %0, %struct.cbq_class** %3, align 8
  store %struct.tc_cbq_wrropt* %1, %struct.tc_cbq_wrropt** %4, align 8
  %6 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %7 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.cbq_sched_data* @qdisc_priv(i32 %8)
  store %struct.cbq_sched_data* %9, %struct.cbq_sched_data** %5, align 8
  %10 = load %struct.tc_cbq_wrropt*, %struct.tc_cbq_wrropt** %4, align 8
  %11 = getelementptr inbounds %struct.tc_cbq_wrropt, %struct.tc_cbq_wrropt* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.tc_cbq_wrropt*, %struct.tc_cbq_wrropt** %4, align 8
  %16 = getelementptr inbounds %struct.tc_cbq_wrropt, %struct.tc_cbq_wrropt* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %19 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %18, i32 0, i32 4
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.tc_cbq_wrropt*, %struct.tc_cbq_wrropt** %4, align 8
  %22 = getelementptr inbounds %struct.tc_cbq_wrropt, %struct.tc_cbq_wrropt* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.tc_cbq_wrropt*, %struct.tc_cbq_wrropt** %4, align 8
  %27 = getelementptr inbounds %struct.tc_cbq_wrropt, %struct.tc_cbq_wrropt* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %30 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %29, i32 0, i32 3
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %25, %20
  %32 = load %struct.tc_cbq_wrropt*, %struct.tc_cbq_wrropt** %4, align 8
  %33 = getelementptr inbounds %struct.tc_cbq_wrropt, %struct.tc_cbq_wrropt* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %31
  %37 = load %struct.tc_cbq_wrropt*, %struct.tc_cbq_wrropt** %4, align 8
  %38 = getelementptr inbounds %struct.tc_cbq_wrropt, %struct.tc_cbq_wrropt* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %39, 1
  %41 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %42 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %44 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %47 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %49 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %52 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp sge i64 %50, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %36
  %56 = load i64, i64* @TC_CBQ_MAXPRIO, align 8
  %57 = sub nsw i64 %56, 1
  %58 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %59 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %55, %36
  br label %61

61:                                               ; preds = %60, %31
  %62 = load %struct.cbq_sched_data*, %struct.cbq_sched_data** %5, align 8
  %63 = load %struct.cbq_class*, %struct.cbq_class** %3, align 8
  %64 = call i32 @cbq_addprio(%struct.cbq_sched_data* %62, %struct.cbq_class* %63)
  ret i32 0
}

declare dso_local %struct.cbq_sched_data* @qdisc_priv(i32) #1

declare dso_local i32 @cbq_addprio(%struct.cbq_sched_data*, %struct.cbq_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
