; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pm_qos_params.c_pm_qos_remove_notifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_pm_qos_params.c_pm_qos_remove_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.notifier_block = type { i32 }

@pm_qos_array = common dso_local global %struct.TYPE_2__** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pm_qos_remove_notifier(i32 %0, %struct.notifier_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.notifier_block* %1, %struct.notifier_block** %4, align 8
  %6 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @pm_qos_array, align 8
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %6, i64 %8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.notifier_block*, %struct.notifier_block** %4, align 8
  %14 = call i32 @blocking_notifier_chain_unregister(i32 %12, %struct.notifier_block* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  ret i32 %15
}

declare dso_local i32 @blocking_notifier_chain_unregister(i32, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
