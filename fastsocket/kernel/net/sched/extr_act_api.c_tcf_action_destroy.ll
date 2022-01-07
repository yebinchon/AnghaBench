; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_action_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_action_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action = type { %struct.tc_action*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.tc_action*, i32)*, i32 }

@ACT_P_DELETED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"tcf_action_destroy: BUG? destroying NULL ops\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcf_action_destroy(%struct.tc_action* %0, i32 %1) #0 {
  %3 = alloca %struct.tc_action*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tc_action*, align 8
  store %struct.tc_action* %0, %struct.tc_action** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tc_action*, %struct.tc_action** %3, align 8
  store %struct.tc_action* %6, %struct.tc_action** %5, align 8
  br label %7

7:                                                ; preds = %54, %2
  %8 = load %struct.tc_action*, %struct.tc_action** %5, align 8
  %9 = icmp ne %struct.tc_action* %8, null
  br i1 %9, label %10, label %56

10:                                               ; preds = %7
  %11 = load %struct.tc_action*, %struct.tc_action** %5, align 8
  %12 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %46

15:                                               ; preds = %10
  %16 = load %struct.tc_action*, %struct.tc_action** %5, align 8
  %17 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64 (%struct.tc_action*, i32)*, i64 (%struct.tc_action*, i32)** %19, align 8
  %21 = icmp ne i64 (%struct.tc_action*, i32)* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %15
  %23 = load %struct.tc_action*, %struct.tc_action** %5, align 8
  %24 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64 (%struct.tc_action*, i32)*, i64 (%struct.tc_action*, i32)** %26, align 8
  %28 = load %struct.tc_action*, %struct.tc_action** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i64 %27(%struct.tc_action* %28, i32 %29)
  %31 = load i64, i64* @ACT_P_DELETED, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %22
  %34 = load %struct.tc_action*, %struct.tc_action** %5, align 8
  %35 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @module_put(i32 %38)
  br label %40

40:                                               ; preds = %33, %22
  %41 = load %struct.tc_action*, %struct.tc_action** %3, align 8
  %42 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %41, i32 0, i32 0
  %43 = load %struct.tc_action*, %struct.tc_action** %42, align 8
  store %struct.tc_action* %43, %struct.tc_action** %3, align 8
  %44 = load %struct.tc_action*, %struct.tc_action** %5, align 8
  %45 = call i32 @kfree(%struct.tc_action* %44)
  br label %53

46:                                               ; preds = %15, %10
  %47 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.tc_action*, %struct.tc_action** %3, align 8
  %49 = getelementptr inbounds %struct.tc_action, %struct.tc_action* %48, i32 0, i32 0
  %50 = load %struct.tc_action*, %struct.tc_action** %49, align 8
  store %struct.tc_action* %50, %struct.tc_action** %3, align 8
  %51 = load %struct.tc_action*, %struct.tc_action** %5, align 8
  %52 = call i32 @kfree(%struct.tc_action* %51)
  br label %53

53:                                               ; preds = %46, %40
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.tc_action*, %struct.tc_action** %3, align 8
  store %struct.tc_action* %55, %struct.tc_action** %5, align 8
  br label %7

56:                                               ; preds = %7
  ret void
}

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.tc_action*) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
