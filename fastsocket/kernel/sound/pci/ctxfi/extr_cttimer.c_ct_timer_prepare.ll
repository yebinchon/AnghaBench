; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cttimer.c_ct_timer_prepare.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cttimer.c_ct_timer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_timer_instance = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ct_timer_instance*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ct_timer_prepare(%struct.ct_timer_instance* %0) #0 {
  %2 = alloca %struct.ct_timer_instance*, align 8
  store %struct.ct_timer_instance* %0, %struct.ct_timer_instance** %2, align 8
  %3 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %2, align 8
  %4 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %3, i32 0, i32 2
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32 (%struct.ct_timer_instance*)*, i32 (%struct.ct_timer_instance*)** %8, align 8
  %10 = icmp ne i32 (%struct.ct_timer_instance*)* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %2, align 8
  %13 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.ct_timer_instance*)*, i32 (%struct.ct_timer_instance*)** %17, align 8
  %19 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %2, align 8
  %20 = call i32 %18(%struct.ct_timer_instance* %19)
  br label %21

21:                                               ; preds = %11, %1
  %22 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %2, align 8
  %23 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.ct_timer_instance*, %struct.ct_timer_instance** %2, align 8
  %25 = getelementptr inbounds %struct.ct_timer_instance, %struct.ct_timer_instance* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
