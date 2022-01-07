; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___netdev_pick_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___netdev_pick_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i64, %struct.sock* }
%struct.sock = type { i32 }
%struct.dst_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__netdev_pick_tx(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dst_entry*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %5, align 8
  %12 = load %struct.sock*, %struct.sock** %5, align 8
  %13 = call i32 @sk_tx_queue_get(%struct.sock* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %22, %25
  br i1 %26, label %27, label %63

27:                                               ; preds = %21, %16, %2
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @get_xps_queue(%struct.net_device* %28, %struct.sk_buff* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i32 @skb_tx_hash(%struct.net_device* %34, %struct.sk_buff* %35)
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %33, %27
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load %struct.sock*, %struct.sock** %5, align 8
  %43 = icmp ne %struct.sock* %42, null
  br i1 %43, label %44, label %61

44:                                               ; preds = %41
  %45 = load %struct.sock*, %struct.sock** %5, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.dst_entry* @rcu_dereference_check(i32 %47, i32 1)
  store %struct.dst_entry* %48, %struct.dst_entry** %8, align 8
  %49 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %50 = icmp ne %struct.dst_entry* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %52)
  %54 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %55 = icmp eq %struct.dst_entry* %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.sock*, %struct.sock** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @sk_tx_queue_set(%struct.sock* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %51, %44
  br label %61

61:                                               ; preds = %60, %41, %37
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %61, %21
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local i32 @sk_tx_queue_get(%struct.sock*) #1

declare dso_local i32 @get_xps_queue(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @skb_tx_hash(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local %struct.dst_entry* @rcu_dereference_check(i32, i32) #1

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @sk_tx_queue_set(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
