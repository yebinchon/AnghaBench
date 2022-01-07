; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_class_hash_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_class_hash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc_class_hash = type { i32, i32, i64, i32* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qdisc_class_hash_init(%struct.Qdisc_class_hash* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.Qdisc_class_hash*, align 8
  %4 = alloca i32, align 4
  store %struct.Qdisc_class_hash* %0, %struct.Qdisc_class_hash** %3, align 8
  store i32 4, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32* @qdisc_class_hash_alloc(i32 %5)
  %7 = load %struct.Qdisc_class_hash*, %struct.Qdisc_class_hash** %3, align 8
  %8 = getelementptr inbounds %struct.Qdisc_class_hash, %struct.Qdisc_class_hash* %7, i32 0, i32 3
  store i32* %6, i32** %8, align 8
  %9 = load %struct.Qdisc_class_hash*, %struct.Qdisc_class_hash** %3, align 8
  %10 = getelementptr inbounds %struct.Qdisc_class_hash, %struct.Qdisc_class_hash* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %26

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.Qdisc_class_hash*, %struct.Qdisc_class_hash** %3, align 8
  %19 = getelementptr inbounds %struct.Qdisc_class_hash, %struct.Qdisc_class_hash* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sub i32 %20, 1
  %22 = load %struct.Qdisc_class_hash*, %struct.Qdisc_class_hash** %3, align 8
  %23 = getelementptr inbounds %struct.Qdisc_class_hash, %struct.Qdisc_class_hash* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.Qdisc_class_hash*, %struct.Qdisc_class_hash** %3, align 8
  %25 = getelementptr inbounds %struct.Qdisc_class_hash, %struct.Qdisc_class_hash* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %16, %13
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32* @qdisc_class_hash_alloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
