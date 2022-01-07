; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_unregister_qdisc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_unregister_qdisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc_ops = type { %struct.Qdisc_ops* }

@ENOENT = common dso_local global i32 0, align 4
@qdisc_mod_lock = common dso_local global i32 0, align 4
@qdisc_base = common dso_local global %struct.Qdisc_ops* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unregister_qdisc(%struct.Qdisc_ops* %0) #0 {
  %2 = alloca %struct.Qdisc_ops*, align 8
  %3 = alloca %struct.Qdisc_ops*, align 8
  %4 = alloca %struct.Qdisc_ops**, align 8
  %5 = alloca i32, align 4
  store %struct.Qdisc_ops* %0, %struct.Qdisc_ops** %2, align 8
  %6 = load i32, i32* @ENOENT, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = call i32 @write_lock(i32* @qdisc_mod_lock)
  store %struct.Qdisc_ops** @qdisc_base, %struct.Qdisc_ops*** %4, align 8
  br label %9

9:                                                ; preds = %19, %1
  %10 = load %struct.Qdisc_ops**, %struct.Qdisc_ops*** %4, align 8
  %11 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %10, align 8
  store %struct.Qdisc_ops* %11, %struct.Qdisc_ops** %3, align 8
  %12 = icmp ne %struct.Qdisc_ops* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %3, align 8
  %15 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %2, align 8
  %16 = icmp eq %struct.Qdisc_ops* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %22

18:                                               ; preds = %13
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %3, align 8
  %21 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %20, i32 0, i32 0
  store %struct.Qdisc_ops** %21, %struct.Qdisc_ops*** %4, align 8
  br label %9

22:                                               ; preds = %17, %9
  %23 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %3, align 8
  %24 = icmp ne %struct.Qdisc_ops* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %3, align 8
  %27 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %26, i32 0, i32 0
  %28 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %27, align 8
  %29 = load %struct.Qdisc_ops**, %struct.Qdisc_ops*** %4, align 8
  store %struct.Qdisc_ops* %28, %struct.Qdisc_ops** %29, align 8
  %30 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %3, align 8
  %31 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %30, i32 0, i32 0
  store %struct.Qdisc_ops* null, %struct.Qdisc_ops** %31, align 8
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %25, %22
  %33 = call i32 @write_unlock(i32* @qdisc_mod_lock)
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
