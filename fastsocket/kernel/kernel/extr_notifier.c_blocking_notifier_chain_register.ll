; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_notifier.c_blocking_notifier_chain_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_notifier.c_blocking_notifier_chain_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blocking_notifier_head = type { i32, i32 }
%struct.notifier_block = type { i32 }

@system_state = common dso_local global i64 0, align 8
@SYSTEM_BOOTING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blocking_notifier_chain_register(%struct.blocking_notifier_head* %0, %struct.notifier_block* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blocking_notifier_head*, align 8
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i32, align 4
  store %struct.blocking_notifier_head* %0, %struct.blocking_notifier_head** %4, align 8
  store %struct.notifier_block* %1, %struct.notifier_block** %5, align 8
  %7 = load i64, i64* @system_state, align 8
  %8 = load i64, i64* @SYSTEM_BOOTING, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.blocking_notifier_head*, %struct.blocking_notifier_head** %4, align 8
  %15 = getelementptr inbounds %struct.blocking_notifier_head, %struct.blocking_notifier_head* %14, i32 0, i32 1
  %16 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %17 = call i32 @notifier_chain_register(i32* %15, %struct.notifier_block* %16)
  store i32 %17, i32* %3, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load %struct.blocking_notifier_head*, %struct.blocking_notifier_head** %4, align 8
  %20 = getelementptr inbounds %struct.blocking_notifier_head, %struct.blocking_notifier_head* %19, i32 0, i32 0
  %21 = call i32 @down_write(i32* %20)
  %22 = load %struct.blocking_notifier_head*, %struct.blocking_notifier_head** %4, align 8
  %23 = getelementptr inbounds %struct.blocking_notifier_head, %struct.blocking_notifier_head* %22, i32 0, i32 1
  %24 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %25 = call i32 @notifier_chain_register(i32* %23, %struct.notifier_block* %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.blocking_notifier_head*, %struct.blocking_notifier_head** %4, align 8
  %27 = getelementptr inbounds %struct.blocking_notifier_head, %struct.blocking_notifier_head* %26, i32 0, i32 0
  %28 = call i32 @up_write(i32* %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %18, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @notifier_chain_register(i32*, %struct.notifier_block*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
