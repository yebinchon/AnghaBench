; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tc_lookup_action_n.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_act_api.c_tc_lookup_action_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tc_action_ops = type { i32, i32, %struct.tc_action_ops* }

@act_mod_lock = common dso_local global i32 0, align 4
@act_base = common dso_local global %struct.tc_action_ops* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tc_action_ops* (i8*)* @tc_lookup_action_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tc_action_ops* @tc_lookup_action_n(i8* %0) #0 {
  %2 = alloca %struct.tc_action_ops*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.tc_action_ops*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.tc_action_ops* null, %struct.tc_action_ops** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %36

7:                                                ; preds = %1
  %8 = call i32 @read_lock(i32* @act_mod_lock)
  %9 = load %struct.tc_action_ops*, %struct.tc_action_ops** @act_base, align 8
  store %struct.tc_action_ops* %9, %struct.tc_action_ops** %4, align 8
  br label %10

10:                                               ; preds = %30, %7
  %11 = load %struct.tc_action_ops*, %struct.tc_action_ops** %4, align 8
  %12 = icmp ne %struct.tc_action_ops* %11, null
  br i1 %12, label %13, label %34

13:                                               ; preds = %10
  %14 = load i8*, i8** %3, align 8
  %15 = load %struct.tc_action_ops*, %struct.tc_action_ops** %4, align 8
  %16 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @strcmp(i8* %14, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %13
  %21 = load %struct.tc_action_ops*, %struct.tc_action_ops** %4, align 8
  %22 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @try_module_get(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = call i32 @read_unlock(i32* @act_mod_lock)
  store %struct.tc_action_ops* null, %struct.tc_action_ops** %2, align 8
  br label %38

28:                                               ; preds = %20
  br label %34

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.tc_action_ops*, %struct.tc_action_ops** %4, align 8
  %32 = getelementptr inbounds %struct.tc_action_ops, %struct.tc_action_ops* %31, i32 0, i32 2
  %33 = load %struct.tc_action_ops*, %struct.tc_action_ops** %32, align 8
  store %struct.tc_action_ops* %33, %struct.tc_action_ops** %4, align 8
  br label %10

34:                                               ; preds = %28, %10
  %35 = call i32 @read_unlock(i32* @act_mod_lock)
  br label %36

36:                                               ; preds = %34, %1
  %37 = load %struct.tc_action_ops*, %struct.tc_action_ops** %4, align 8
  store %struct.tc_action_ops* %37, %struct.tc_action_ops** %2, align 8
  br label %38

38:                                               ; preds = %36, %26
  %39 = load %struct.tc_action_ops*, %struct.tc_action_ops** %2, align 8
  ret %struct.tc_action_ops* %39
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
