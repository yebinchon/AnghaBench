; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_bcm.c_bcm_tx_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_bcm.c_bcm_tx_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { %struct.sock*, %struct.net_device* }
%struct.net_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@CFSIZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@MHSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msghdr*, i32, %struct.sock*)* @bcm_tx_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_tx_send(%struct.msghdr* %0, i32 %1, %struct.sock* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.msghdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  store %struct.msghdr* %0, %struct.msghdr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sock* %2, %struct.sock** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %69

16:                                               ; preds = %3
  %17 = load i32, i32* @CFSIZ, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.sk_buff* @alloc_skb(i32 %17, i32 %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %8, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %69

25:                                               ; preds = %16
  %26 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %27 = load i32, i32* @CFSIZ, align 4
  %28 = call i32 @skb_put(%struct.sk_buff* %26, i32 %27)
  %29 = load %struct.msghdr*, %struct.msghdr** %5, align 8
  %30 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CFSIZ, align 4
  %33 = call i32 @memcpy_fromiovec(i32 %28, i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = call i32 @kfree_skb(%struct.sk_buff* %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %4, align 4
  br label %69

40:                                               ; preds = %25
  %41 = load i32, i32* %6, align 4
  %42 = call %struct.net_device* @dev_get_by_index(i32* @init_net, i32 %41)
  store %struct.net_device* %42, %struct.net_device** %9, align 8
  %43 = load %struct.net_device*, %struct.net_device** %9, align 8
  %44 = icmp ne %struct.net_device* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = call i32 @kfree_skb(%struct.sk_buff* %46)
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %69

50:                                               ; preds = %40
  %51 = load %struct.net_device*, %struct.net_device** %9, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  store %struct.net_device* %51, %struct.net_device** %53, align 8
  %54 = load %struct.sock*, %struct.sock** %7, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  store %struct.sock* %54, %struct.sock** %56, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = call i32 @can_send(%struct.sk_buff* %57, i32 1)
  store i32 %58, i32* %10, align 4
  %59 = load %struct.net_device*, %struct.net_device** %9, align 8
  %60 = call i32 @dev_put(%struct.net_device* %59)
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %50
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %69

65:                                               ; preds = %50
  %66 = load i32, i32* @CFSIZ, align 4
  %67 = load i32, i32* @MHSIZ, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %63, %45, %36, %22, %13
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @memcpy_fromiovec(i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.net_device* @dev_get_by_index(i32*, i32) #1

declare dso_local i32 @can_send(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
