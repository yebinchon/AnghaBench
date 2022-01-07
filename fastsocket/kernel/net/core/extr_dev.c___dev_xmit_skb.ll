; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___dev_xmit_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___dev_xmit_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.Qdisc = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }

@__QDISC_STATE_DEACTIVATED = common dso_local global i32 0, align 4
@NET_XMIT_DROP = common dso_local global i32 0, align 4
@TCQ_F_CAN_BYPASS = common dso_local global i32 0, align 4
@__QDISC_STATE_RUNNING = common dso_local global i32 0, align 4
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.Qdisc*, %struct.net_device*, %struct.netdev_queue*)* @__dev_xmit_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dev_xmit_skb(%struct.sk_buff* %0, %struct.Qdisc* %1, %struct.net_device* %2, %struct.netdev_queue* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.Qdisc*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.netdev_queue*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.Qdisc* %1, %struct.Qdisc** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  store %struct.netdev_queue* %3, %struct.netdev_queue** %8, align 8
  %11 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %12 = call i32* @qdisc_lock(%struct.Qdisc* %11)
  store i32* %12, i32** %9, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load i32, i32* @__QDISC_STATE_DEACTIVATED, align 4
  %16 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %17 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %16, i32 0, i32 1
  %18 = call i32 @test_bit(i32 %15, i32* %17)
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = call i32 @kfree_skb(%struct.sk_buff* %22)
  %24 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %24, i32* %10, align 4
  br label %72

25:                                               ; preds = %4
  %26 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %27 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TCQ_F_CAN_BYPASS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %65

32:                                               ; preds = %25
  %33 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %34 = call i32 @qdisc_qlen(%struct.Qdisc* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %65, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @__QDISC_STATE_RUNNING, align 4
  %38 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %39 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %38, i32 0, i32 1
  %40 = call i32 @test_and_set_bit(i32 %37, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %65, label %42

42:                                               ; preds = %36
  %43 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @__qdisc_update_bstats(%struct.Qdisc* %43, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %50 = load %struct.net_device*, %struct.net_device** %7, align 8
  %51 = load %struct.netdev_queue*, %struct.netdev_queue** %8, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i64 @sch_direct_xmit(%struct.sk_buff* %48, %struct.Qdisc* %49, %struct.net_device* %50, %struct.netdev_queue* %51, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %42
  %56 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %57 = call i32 @__qdisc_run(%struct.Qdisc* %56)
  br label %63

58:                                               ; preds = %42
  %59 = load i32, i32* @__QDISC_STATE_RUNNING, align 4
  %60 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %61 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %60, i32 0, i32 1
  %62 = call i32 @clear_bit(i32 %59, i32* %61)
  br label %63

63:                                               ; preds = %58, %55
  %64 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %64, i32* %10, align 4
  br label %71

65:                                               ; preds = %36, %32, %25
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %68 = call i32 @qdisc_enqueue_root(%struct.sk_buff* %66, %struct.Qdisc* %67)
  store i32 %68, i32* %10, align 4
  %69 = load %struct.Qdisc*, %struct.Qdisc** %6, align 8
  %70 = call i32 @qdisc_run(%struct.Qdisc* %69)
  br label %71

71:                                               ; preds = %65, %63
  br label %72

72:                                               ; preds = %71, %21
  %73 = load i32*, i32** %9, align 8
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load i32, i32* %10, align 4
  ret i32 %75
}

declare dso_local i32* @qdisc_lock(%struct.Qdisc*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @qdisc_qlen(%struct.Qdisc*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @__qdisc_update_bstats(%struct.Qdisc*, i32) #1

declare dso_local i64 @sch_direct_xmit(%struct.sk_buff*, %struct.Qdisc*, %struct.net_device*, %struct.netdev_queue*, i32*) #1

declare dso_local i32 @__qdisc_run(%struct.Qdisc*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @qdisc_enqueue_root(%struct.sk_buff*, %struct.Qdisc*) #1

declare dso_local i32 @qdisc_run(%struct.Qdisc*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
