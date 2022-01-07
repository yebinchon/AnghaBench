; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_lec.c_lec_atm_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_lec.c_lec_atm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { i64 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.lec_priv = type { i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"%s lec_atm_close: closing with messages pending\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"%s: Shut down!\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atm_vcc*)* @lec_atm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lec_atm_close(%struct.atm_vcc* %0) #0 {
  %2 = alloca %struct.atm_vcc*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.lec_priv*, align 8
  store %struct.atm_vcc* %0, %struct.atm_vcc** %2, align 8
  %6 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %7 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.net_device*
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.lec_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.lec_priv* %11, %struct.lec_priv** %5, align 8
  %12 = load %struct.lec_priv*, %struct.lec_priv** %5, align 8
  %13 = getelementptr inbounds %struct.lec_priv, %struct.lec_priv* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call i32 @netif_stop_queue(%struct.net_device* %14)
  %16 = load %struct.lec_priv*, %struct.lec_priv** %5, align 8
  %17 = call i32 @lec_arp_destroy(%struct.lec_priv* %16)
  %18 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %19 = call %struct.TYPE_2__* @sk_atm(%struct.atm_vcc* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i64 @skb_peek(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %23, %1
  br label %29

29:                                               ; preds = %35, %28
  %30 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %31 = call %struct.TYPE_2__* @sk_atm(%struct.atm_vcc* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call %struct.sk_buff* @skb_dequeue(i32* %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %3, align 8
  %34 = icmp ne %struct.sk_buff* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.atm_vcc*, %struct.atm_vcc** %2, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @atm_return(%struct.atm_vcc* %36, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = call i32 @dev_kfree_skb(%struct.sk_buff* %41)
  br label %29

43:                                               ; preds = %29
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @THIS_MODULE, align 4
  %49 = call i32 @module_put(i32 %48)
  ret void
}

declare dso_local %struct.lec_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @lec_arp_destroy(%struct.lec_priv*) #1

declare dso_local i64 @skb_peek(i32*) #1

declare dso_local %struct.TYPE_2__* @sk_atm(%struct.atm_vcc*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @atm_return(%struct.atm_vcc*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
