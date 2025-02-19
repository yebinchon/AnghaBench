; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_list_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_list_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { i64, i32, i32 }

@TC_H_ROOT = common dso_local global i64 0, align 8
@TCQ_F_INGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qdisc_list_del(%struct.Qdisc* %0) #0 {
  %2 = alloca %struct.Qdisc*, align 8
  store %struct.Qdisc* %0, %struct.Qdisc** %2, align 8
  %3 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %4 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TC_H_ROOT, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %10 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TCQ_F_INGRESS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = load %struct.Qdisc*, %struct.Qdisc** %2, align 8
  %17 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %16, i32 0, i32 2
  %18 = call i32 @list_del(i32* %17)
  br label %19

19:                                               ; preds = %15, %8, %1
  ret void
}

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
