; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_netpoll.c___netpoll_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_netpoll.c___netpoll_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netpoll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.netpoll_info*, %struct.net_device_ops* }
%struct.netpoll_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device_ops = type { i32 (%struct.TYPE_2__*)* }

@NETPOLL_RX_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__netpoll_cleanup(%struct.netpoll* %0) #0 {
  %2 = alloca %struct.netpoll*, align 8
  %3 = alloca %struct.netpoll_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.net_device_ops*, align 8
  store %struct.netpoll* %0, %struct.netpoll** %2, align 8
  %6 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %7 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.netpoll_info*, %struct.netpoll_info** %9, align 8
  store %struct.netpoll_info* %10, %struct.netpoll_info** %3, align 8
  %11 = load %struct.netpoll_info*, %struct.netpoll_info** %3, align 8
  %12 = icmp ne %struct.netpoll_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %79

14:                                               ; preds = %1
  %15 = load %struct.netpoll_info*, %struct.netpoll_info** %3, align 8
  %16 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %14
  %20 = load %struct.netpoll_info*, %struct.netpoll_info** %3, align 8
  %21 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %20, i32 0, i32 4
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load i32, i32* @NETPOLL_RX_ENABLED, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.netpoll_info*, %struct.netpoll_info** %3, align 8
  %27 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.netpoll_info*, %struct.netpoll_info** %3, align 8
  %31 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %30, i32 0, i32 4
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  br label %34

34:                                               ; preds = %19, %14
  %35 = load %struct.netpoll_info*, %struct.netpoll_info** %3, align 8
  %36 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %35, i32 0, i32 3
  %37 = call i64 @atomic_dec_and_test(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %79

39:                                               ; preds = %34
  %40 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %41 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load %struct.net_device_ops*, %struct.net_device_ops** %43, align 8
  store %struct.net_device_ops* %44, %struct.net_device_ops** %5, align 8
  %45 = load %struct.net_device_ops*, %struct.net_device_ops** %5, align 8
  %46 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %46, align 8
  %48 = icmp ne i32 (%struct.TYPE_2__*)* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load %struct.net_device_ops*, %struct.net_device_ops** %5, align 8
  %51 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %51, align 8
  %53 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %54 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = call i32 %52(%struct.TYPE_2__* %55)
  br label %57

57:                                               ; preds = %49, %39
  %58 = load %struct.netpoll*, %struct.netpoll** %2, align 8
  %59 = getelementptr inbounds %struct.netpoll, %struct.netpoll* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.netpoll_info*, %struct.netpoll_info** %61, align 8
  %63 = call i32 @rcu_assign_pointer(%struct.netpoll_info* %62, i32* null)
  %64 = call i32 (...) @synchronize_rcu_bh()
  %65 = load %struct.netpoll_info*, %struct.netpoll_info** %3, align 8
  %66 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %65, i32 0, i32 2
  %67 = call i32 @skb_queue_purge(i32* %66)
  %68 = load %struct.netpoll_info*, %struct.netpoll_info** %3, align 8
  %69 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %68, i32 0, i32 0
  %70 = call i32 @skb_queue_purge(i32* %69)
  %71 = load %struct.netpoll_info*, %struct.netpoll_info** %3, align 8
  %72 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %71, i32 0, i32 1
  %73 = call i32 @cancel_rearming_delayed_work(i32* %72)
  %74 = load %struct.netpoll_info*, %struct.netpoll_info** %3, align 8
  %75 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %74, i32 0, i32 0
  %76 = call i32 @__skb_queue_purge(i32* %75)
  %77 = load %struct.netpoll_info*, %struct.netpoll_info** %3, align 8
  %78 = call i32 @kfree(%struct.netpoll_info* %77)
  br label %79

79:                                               ; preds = %13, %57, %34
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.netpoll_info*, i32*) #1

declare dso_local i32 @synchronize_rcu_bh(...) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @cancel_rearming_delayed_work(i32*) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @kfree(%struct.netpoll_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
