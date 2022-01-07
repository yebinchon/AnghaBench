; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcupdate.c_synchronize_rcu_bh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_rcupdate.c_synchronize_rcu_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_synchronize = type { i32, i32 }

@wakeme_after_rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @synchronize_rcu_bh() #0 {
  %1 = alloca %struct.rcu_synchronize, align 4
  %2 = call i64 (...) @rcu_blocking_is_gp()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %13

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.rcu_synchronize, %struct.rcu_synchronize* %1, i32 0, i32 0
  %7 = call i32 @init_completion(i32* %6)
  %8 = getelementptr inbounds %struct.rcu_synchronize, %struct.rcu_synchronize* %1, i32 0, i32 1
  %9 = load i32, i32* @wakeme_after_rcu, align 4
  %10 = call i32 @call_rcu_bh(i32* %8, i32 %9)
  %11 = getelementptr inbounds %struct.rcu_synchronize, %struct.rcu_synchronize* %1, i32 0, i32 0
  %12 = call i32 @wait_for_completion(i32* %11)
  br label %13

13:                                               ; preds = %5, %4
  ret void
}

declare dso_local i64 @rcu_blocking_is_gp(...) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @call_rcu_bh(i32*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
