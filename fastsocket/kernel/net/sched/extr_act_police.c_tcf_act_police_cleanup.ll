; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_police.c_tcf_act_police_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_police.c_tcf_act_police_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action = type { %struct.tcf_police* }
%struct.tcf_police = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tc_action*, i32)* @tcf_act_police_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcf_act_police_cleanup(%struct.tc_action* %0, i32 %1) #0 {
  %3 = alloca %struct.tc_action*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcf_police*, align 8
  %6 = alloca i32, align 4
  store %struct.tc_action* %0, %struct.tc_action** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tc_action*, %struct.tc_action** %3, align 8
  %8 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %7, i32 0, i32 0
  %9 = load %struct.tcf_police*, %struct.tcf_police** %8, align 8
  store %struct.tcf_police* %9, %struct.tcf_police** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.tcf_police*, %struct.tcf_police** %5, align 8
  %11 = icmp ne %struct.tcf_police* %10, null
  br i1 %11, label %12, label %38

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load %struct.tcf_police*, %struct.tcf_police** %5, align 8
  %17 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %17, align 8
  br label %20

20:                                               ; preds = %15, %12
  %21 = load %struct.tcf_police*, %struct.tcf_police** %5, align 8
  %22 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.tcf_police*, %struct.tcf_police** %5, align 8
  %26 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load %struct.tcf_police*, %struct.tcf_police** %5, align 8
  %31 = getelementptr inbounds %struct.tcf_police, %struct.tcf_police* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load %struct.tcf_police*, %struct.tcf_police** %5, align 8
  %36 = call i32 @tcf_police_destroy(%struct.tcf_police* %35)
  store i32 1, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %29, %20
  br label %38

38:                                               ; preds = %37, %2
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @tcf_police_destroy(%struct.tcf_police*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
