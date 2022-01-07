; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_register_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tcf_register_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action_ops = type { i64, %struct.tc_action_ops*, i32 }

@act_mod_lock = common dso_local global i32 0, align 4
@act_base = common dso_local global %struct.tc_action_ops* null, align 8
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcf_register_action(%struct.tc_action_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tc_action_ops*, align 8
  %4 = alloca %struct.tc_action_ops*, align 8
  %5 = alloca %struct.tc_action_ops**, align 8
  store %struct.tc_action_ops* %0, %struct.tc_action_ops** %3, align 8
  %6 = call i32 @write_lock(i32* @act_mod_lock)
  store %struct.tc_action_ops** @act_base, %struct.tc_action_ops*** %5, align 8
  br label %7

7:                                                ; preds = %33, %1
  %8 = load %struct.tc_action_ops**, %struct.tc_action_ops*** %5, align 8
  %9 = load %struct.tc_action_ops*, %struct.tc_action_ops** %8, align 8
  store %struct.tc_action_ops* %9, %struct.tc_action_ops** %4, align 8
  %10 = icmp ne %struct.tc_action_ops* %9, null
  br i1 %10, label %11, label %36

11:                                               ; preds = %7
  %12 = load %struct.tc_action_ops*, %struct.tc_action_ops** %3, align 8
  %13 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.tc_action_ops*, %struct.tc_action_ops** %4, align 8
  %16 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %11
  %20 = load %struct.tc_action_ops*, %struct.tc_action_ops** %3, align 8
  %21 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.tc_action_ops*, %struct.tc_action_ops** %4, align 8
  %24 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @strcmp(i32 %22, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19, %11
  %29 = call i32 @write_unlock(i32* @act_mod_lock)
  %30 = load i32, i32* @EEXIST, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %42

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.tc_action_ops*, %struct.tc_action_ops** %4, align 8
  %35 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %34, i32 0, i32 1
  store %struct.tc_action_ops** %35, %struct.tc_action_ops*** %5, align 8
  br label %7

36:                                               ; preds = %7
  %37 = load %struct.tc_action_ops*, %struct.tc_action_ops** %3, align 8
  %38 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %37, i32 0, i32 1
  store %struct.tc_action_ops* null, %struct.tc_action_ops** %38, align 8
  %39 = load %struct.tc_action_ops*, %struct.tc_action_ops** %3, align 8
  %40 = load %struct.tc_action_ops**, %struct.tc_action_ops*** %5, align 8
  store %struct.tc_action_ops* %39, %struct.tc_action_ops** %40, align 8
  %41 = call i32 @write_unlock(i32* @act_mod_lock)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %36, %28
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
