; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_tx.c_et131x_send_packets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_tx.c_et131x_send_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.et131x_adapter = type { %struct.TYPE_3__, i64, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @et131x_send_packets(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.et131x_adapter*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.et131x_adapter* null, %struct.et131x_adapter** %6, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.et131x_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.et131x_adapter* %8, %struct.et131x_adapter** %6, align 8
  %9 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %10 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %16 = call i64 @MP_TCB_RESOURCES_NOT_AVAILABLE(%struct.et131x_adapter* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %65

21:                                               ; preds = %14
  %22 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %23 = call i64 @MP_SHOULD_FAIL_SEND(%struct.et131x_adapter* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = call i32 @netif_carrier_ok(%struct.net_device* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30, %25, %21
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %35)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  %37 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %38 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  br label %64

42:                                               ; preds = %30
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %45 = call i32 @et131x_send_packet(%struct.sk_buff* %43, %struct.et131x_adapter* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %63

51:                                               ; preds = %42
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %56 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %55)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  %57 = load %struct.et131x_adapter*, %struct.et131x_adapter** %6, align 8
  %58 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %54, %51
  br label %63

63:                                               ; preds = %62, %50
  br label %64

64:                                               ; preds = %63, %34
  br label %65

65:                                               ; preds = %64, %18
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.et131x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @MP_TCB_RESOURCES_NOT_AVAILABLE(%struct.et131x_adapter*) #1

declare dso_local i64 @MP_SHOULD_FAIL_SEND(%struct.et131x_adapter*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @et131x_send_packet(%struct.sk_buff*, %struct.et131x_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
