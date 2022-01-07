; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_set_overlimit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_set_overlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_class = type { i32, i32, i32, i32 }
%struct.tc_cbq_ovl = type { i32, i32, i32 }

@cbq_ovl_classic = common dso_local global i32 0, align 4
@cbq_ovl_delay = common dso_local global i32 0, align 4
@TC_CBQ_MAXPRIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@cbq_ovl_lowprio = common dso_local global i32 0, align 4
@cbq_ovl_drop = common dso_local global i32 0, align 4
@cbq_ovl_rclassic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cbq_class*, %struct.tc_cbq_ovl*)* @cbq_set_overlimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbq_set_overlimit(%struct.cbq_class* %0, %struct.tc_cbq_ovl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cbq_class*, align 8
  %5 = alloca %struct.tc_cbq_ovl*, align 8
  store %struct.cbq_class* %0, %struct.cbq_class** %4, align 8
  store %struct.tc_cbq_ovl* %1, %struct.tc_cbq_ovl** %5, align 8
  %6 = load %struct.tc_cbq_ovl*, %struct.tc_cbq_ovl** %5, align 8
  %7 = getelementptr inbounds %struct.tc_cbq_ovl, %struct.tc_cbq_ovl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %54 [
    i32 132, label %9
    i32 131, label %13
    i32 129, label %17
    i32 130, label %46
    i32 128, label %50
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @cbq_ovl_classic, align 4
  %11 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %12 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  br label %57

13:                                               ; preds = %2
  %14 = load i32, i32* @cbq_ovl_delay, align 4
  %15 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %16 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  br label %57

17:                                               ; preds = %2
  %18 = load %struct.tc_cbq_ovl*, %struct.tc_cbq_ovl** %5, align 8
  %19 = getelementptr inbounds %struct.tc_cbq_ovl, %struct.tc_cbq_ovl* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* @TC_CBQ_MAXPRIO, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %33, label %24

24:                                               ; preds = %17
  %25 = load %struct.tc_cbq_ovl*, %struct.tc_cbq_ovl** %5, align 8
  %26 = getelementptr inbounds %struct.tc_cbq_ovl, %struct.tc_cbq_ovl* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %30 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp sle i32 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %24, %17
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %63

36:                                               ; preds = %24
  %37 = load %struct.tc_cbq_ovl*, %struct.tc_cbq_ovl** %5, align 8
  %38 = getelementptr inbounds %struct.tc_cbq_ovl, %struct.tc_cbq_ovl* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %42 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @cbq_ovl_lowprio, align 4
  %44 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %45 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %57

46:                                               ; preds = %2
  %47 = load i32, i32* @cbq_ovl_drop, align 4
  %48 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %49 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %57

50:                                               ; preds = %2
  %51 = load i32, i32* @cbq_ovl_rclassic, align 4
  %52 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %53 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %57

54:                                               ; preds = %2
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %63

57:                                               ; preds = %50, %46, %36, %13, %9
  %58 = load %struct.tc_cbq_ovl*, %struct.tc_cbq_ovl** %5, align 8
  %59 = getelementptr inbounds %struct.tc_cbq_ovl, %struct.tc_cbq_ovl* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %62 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %54, %33
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
