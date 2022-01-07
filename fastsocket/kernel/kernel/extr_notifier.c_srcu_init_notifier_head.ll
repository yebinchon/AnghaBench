; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_notifier.c_srcu_init_notifier_head.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_notifier.c_srcu_init_notifier_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcu_notifier_head = type { i32*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @srcu_init_notifier_head(%struct.srcu_notifier_head* %0) #0 {
  %2 = alloca %struct.srcu_notifier_head*, align 8
  store %struct.srcu_notifier_head* %0, %struct.srcu_notifier_head** %2, align 8
  %3 = load %struct.srcu_notifier_head*, %struct.srcu_notifier_head** %2, align 8
  %4 = getelementptr inbounds %struct.srcu_notifier_head, %struct.srcu_notifier_head* %3, i32 0, i32 2
  %5 = call i32 @mutex_init(i32* %4)
  %6 = load %struct.srcu_notifier_head*, %struct.srcu_notifier_head** %2, align 8
  %7 = getelementptr inbounds %struct.srcu_notifier_head, %struct.srcu_notifier_head* %6, i32 0, i32 1
  %8 = call i64 @init_srcu_struct(i32* %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (...) @BUG()
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct.srcu_notifier_head*, %struct.srcu_notifier_head** %2, align 8
  %14 = getelementptr inbounds %struct.srcu_notifier_head, %struct.srcu_notifier_head* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @init_srcu_struct(i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
