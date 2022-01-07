; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_put_stab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_put_stab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdisc_size_table = type { i64, i32 }

@qdisc_stab_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qdisc_put_stab(%struct.qdisc_size_table* %0) #0 {
  %2 = alloca %struct.qdisc_size_table*, align 8
  store %struct.qdisc_size_table* %0, %struct.qdisc_size_table** %2, align 8
  %3 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %2, align 8
  %4 = icmp ne %struct.qdisc_size_table* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %21

6:                                                ; preds = %1
  %7 = call i32 @spin_lock(i32* @qdisc_stab_lock)
  %8 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %2, align 8
  %9 = getelementptr inbounds %struct.qdisc_size_table, %struct.qdisc_size_table* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %9, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %6
  %14 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %2, align 8
  %15 = getelementptr inbounds %struct.qdisc_size_table, %struct.qdisc_size_table* %14, i32 0, i32 1
  %16 = call i32 @list_del(i32* %15)
  %17 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %2, align 8
  %18 = call i32 @kfree(%struct.qdisc_size_table* %17)
  br label %19

19:                                               ; preds = %13, %6
  %20 = call i32 @spin_unlock(i32* @qdisc_stab_lock)
  br label %21

21:                                               ; preds = %19, %5
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.qdisc_size_table*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
