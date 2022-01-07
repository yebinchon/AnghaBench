; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_filter.c_sk_detach_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_filter.c_sk_detach_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_filter = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sk_detach_filter(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_filter*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %5 = load i32, i32* @ENOENT, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %3, align 4
  %7 = call i32 (...) @rcu_read_lock_bh()
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.sk_filter* @rcu_dereference(i32 %10)
  store %struct.sk_filter* %11, %struct.sk_filter** %4, align 8
  %12 = load %struct.sk_filter*, %struct.sk_filter** %4, align 8
  %13 = icmp ne %struct.sk_filter* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @rcu_assign_pointer(i32 %17, i32* null)
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = load %struct.sk_filter*, %struct.sk_filter** %4, align 8
  %21 = call i32 @sk_filter_delayed_uncharge(%struct.sock* %19, %struct.sk_filter* %20)
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %14, %1
  %23 = call i32 (...) @rcu_read_unlock_bh()
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local %struct.sk_filter* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @sk_filter_delayed_uncharge(%struct.sock*, %struct.sk_filter*) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
