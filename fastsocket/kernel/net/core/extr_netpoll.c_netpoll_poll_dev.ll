; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_netpoll.c_netpoll_poll_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_netpoll.c_netpoll_poll_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.net_device*, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.net_device*)* }
%struct.netpoll_info = type { i32 }
%struct.sk_buff = type { %struct.net_device* }

@IFF_SLAVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netpoll_poll_dev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_device_ops*, align 8
  %4 = alloca %struct.netpoll_info*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.netpoll_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.netpoll_info* @rcu_dereference_bh(i32 %10)
  store %struct.netpoll_info* %11, %struct.netpoll_info** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @netif_running(%struct.net_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %1
  br label %72

19:                                               ; preds = %14
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 3
  %22 = load %struct.net_device_ops*, %struct.net_device_ops** %21, align 8
  store %struct.net_device_ops* %22, %struct.net_device_ops** %3, align 8
  %23 = load %struct.net_device_ops*, %struct.net_device_ops** %3, align 8
  %24 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %23, i32 0, i32 0
  %25 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %24, align 8
  %26 = icmp ne i32 (%struct.net_device*)* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %72

28:                                               ; preds = %19
  %29 = load %struct.net_device_ops*, %struct.net_device_ops** %3, align 8
  %30 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %29, i32 0, i32 0
  %31 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %30, align 8
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = call i32 %31(%struct.net_device* %32)
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @poll_napi(%struct.net_device* %34)
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @IFF_SLAVE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %28
  %43 = load %struct.netpoll_info*, %struct.netpoll_info** %4, align 8
  %44 = icmp ne %struct.netpoll_info* %43, null
  br i1 %44, label %45, label %67

45:                                               ; preds = %42
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 2
  %48 = load %struct.net_device*, %struct.net_device** %47, align 8
  store %struct.net_device* %48, %struct.net_device** %5, align 8
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.netpoll_info* @rcu_dereference_bh(i32 %51)
  store %struct.netpoll_info* %52, %struct.netpoll_info** %7, align 8
  br label %53

53:                                               ; preds = %58, %45
  %54 = load %struct.netpoll_info*, %struct.netpoll_info** %4, align 8
  %55 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %54, i32 0, i32 0
  %56 = call %struct.sk_buff* @skb_dequeue(i32* %55)
  store %struct.sk_buff* %56, %struct.sk_buff** %6, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  store %struct.net_device* %59, %struct.net_device** %61, align 8
  %62 = load %struct.netpoll_info*, %struct.netpoll_info** %7, align 8
  %63 = getelementptr inbounds %struct.netpoll_info, %struct.netpoll_info* %62, i32 0, i32 0
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = call i32 @skb_queue_tail(i32* %63, %struct.sk_buff* %64)
  br label %53

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %66, %42
  br label %68

68:                                               ; preds = %67, %28
  %69 = load %struct.netpoll_info*, %struct.netpoll_info** %4, align 8
  %70 = call i32 @service_arp_queue(%struct.netpoll_info* %69)
  %71 = call i32 (...) @zap_completion_queue()
  br label %72

72:                                               ; preds = %68, %27, %18
  ret void
}

declare dso_local %struct.netpoll_info* @rcu_dereference_bh(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @poll_napi(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @service_arp_queue(%struct.netpoll_info*) #1

declare dso_local i32 @zap_completion_queue(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
