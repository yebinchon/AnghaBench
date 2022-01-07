; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_lookup_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_lookup_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc_ops = type { i32, i32, %struct.Qdisc_ops* }
%struct.nlattr = type { i32 }

@qdisc_mod_lock = common dso_local global i32 0, align 4
@qdisc_base = common dso_local global %struct.Qdisc_ops* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Qdisc_ops* (%struct.nlattr*)* @qdisc_lookup_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Qdisc_ops* @qdisc_lookup_ops(%struct.nlattr* %0) #0 {
  %2 = alloca %struct.nlattr*, align 8
  %3 = alloca %struct.Qdisc_ops*, align 8
  store %struct.nlattr* %0, %struct.nlattr** %2, align 8
  store %struct.Qdisc_ops* null, %struct.Qdisc_ops** %3, align 8
  %4 = load %struct.nlattr*, %struct.nlattr** %2, align 8
  %5 = icmp ne %struct.nlattr* %4, null
  br i1 %5, label %6, label %34

6:                                                ; preds = %1
  %7 = call i32 @read_lock(i32* @qdisc_mod_lock)
  %8 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** @qdisc_base, align 8
  store %struct.Qdisc_ops* %8, %struct.Qdisc_ops** %3, align 8
  br label %9

9:                                                ; preds = %28, %6
  %10 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %3, align 8
  %11 = icmp ne %struct.Qdisc_ops* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %9
  %13 = load %struct.nlattr*, %struct.nlattr** %2, align 8
  %14 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %3, align 8
  %15 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @nla_strcmp(%struct.nlattr* %13, i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %3, align 8
  %21 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @try_module_get(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store %struct.Qdisc_ops* null, %struct.Qdisc_ops** %3, align 8
  br label %26

26:                                               ; preds = %25, %19
  br label %32

27:                                               ; preds = %12
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %3, align 8
  %30 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %29, i32 0, i32 2
  %31 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %30, align 8
  store %struct.Qdisc_ops* %31, %struct.Qdisc_ops** %3, align 8
  br label %9

32:                                               ; preds = %26, %9
  %33 = call i32 @read_unlock(i32* @qdisc_mod_lock)
  br label %34

34:                                               ; preds = %32, %1
  %35 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %3, align 8
  ret %struct.Qdisc_ops* %35
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @nla_strcmp(%struct.nlattr*, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
