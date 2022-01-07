; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_notifier.c___srcu_notifier_call_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_notifier.c___srcu_notifier_call_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcu_notifier_head = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__srcu_notifier_call_chain(%struct.srcu_notifier_head* %0, i64 %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.srcu_notifier_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.srcu_notifier_head* %0, %struct.srcu_notifier_head** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %13 = load %struct.srcu_notifier_head*, %struct.srcu_notifier_head** %6, align 8
  %14 = getelementptr inbounds %struct.srcu_notifier_head, %struct.srcu_notifier_head* %13, i32 0, i32 0
  %15 = call i32 @srcu_read_lock(i32* %14)
  store i32 %15, i32* %12, align 4
  %16 = load %struct.srcu_notifier_head*, %struct.srcu_notifier_head** %6, align 8
  %17 = getelementptr inbounds %struct.srcu_notifier_head, %struct.srcu_notifier_head* %16, i32 0, i32 1
  %18 = load i64, i64* %7, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @notifier_call_chain(i32* %17, i64 %18, i8* %19, i32 %20, i32* %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.srcu_notifier_head*, %struct.srcu_notifier_head** %6, align 8
  %24 = getelementptr inbounds %struct.srcu_notifier_head, %struct.srcu_notifier_head* %23, i32 0, i32 0
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @srcu_read_unlock(i32* %24, i32 %25)
  %27 = load i32, i32* %11, align 4
  ret i32 %27
}

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @notifier_call_chain(i32*, i64, i8*, i32, i32*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
