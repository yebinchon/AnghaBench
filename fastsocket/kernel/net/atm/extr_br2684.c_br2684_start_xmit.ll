; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_br2684.c_br2684_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_br2684.c_br2684_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.br2684_dev = type { i32 }
%struct.br2684_vcc = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"br2684_start_xmit, skb_dst(skb)=%p\0A\00", align 1
@devs_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"no vcc attached to dev %s\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @br2684_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @br2684_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.br2684_dev*, align 8
  %7 = alloca %struct.br2684_vcc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.br2684_dev* @BRPRIV(%struct.net_device* %8)
  store %struct.br2684_dev* %9, %struct.br2684_dev** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i32 @skb_dst(%struct.sk_buff* %10)
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = call i32 @read_lock(i32* @devs_lock)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load %struct.br2684_dev*, %struct.br2684_dev** %6, align 8
  %16 = call %struct.br2684_vcc* @pick_outgoing_vcc(%struct.sk_buff* %14, %struct.br2684_dev* %15)
  store %struct.br2684_vcc* %16, %struct.br2684_vcc** %7, align 8
  %17 = load %struct.br2684_vcc*, %struct.br2684_vcc** %7, align 8
  %18 = icmp eq %struct.br2684_vcc* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call i32 @dev_kfree_skb(%struct.sk_buff* %34)
  %36 = call i32 @read_unlock(i32* @devs_lock)
  %37 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %37, i32* %3, align 4
  br label %58

38:                                               ; preds = %2
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = load %struct.br2684_vcc*, %struct.br2684_vcc** %7, align 8
  %42 = call i32 @br2684_xmit_vcc(%struct.sk_buff* %39, %struct.net_device* %40, %struct.br2684_vcc* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %38
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %44, %38
  %56 = call i32 @read_unlock(i32* @devs_lock)
  %57 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %19
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.br2684_dev* @BRPRIV(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.br2684_vcc* @pick_outgoing_vcc(%struct.sk_buff*, %struct.br2684_dev*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @br2684_xmit_vcc(%struct.sk_buff*, %struct.net_device*, %struct.br2684_vcc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
