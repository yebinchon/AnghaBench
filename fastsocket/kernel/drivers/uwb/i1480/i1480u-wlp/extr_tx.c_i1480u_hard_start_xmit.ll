; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_tx.c_i1480u_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_tx.c_i1480u_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i1480u = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.uwb_dev_addr = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"WLP verification of TX frame failed (%d). Dropping packet.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Frame TX failed (%d).\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i1480u_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i1480u*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.uwb_dev_addr, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.i1480u* @netdev_priv(%struct.net_device* %10)
  store %struct.i1480u* %11, %struct.i1480u** %7, align 8
  %12 = load %struct.i1480u*, %struct.i1480u** %7, align 8
  %13 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %8, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_UP, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %53

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %8, align 8
  %25 = load %struct.i1480u*, %struct.i1480u** %7, align 8
  %26 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %25, i32 0, i32 0
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @wlp_prepare_tx_frame(%struct.device* %24, i32* %26, %struct.sk_buff* %27, %struct.uwb_dev_addr* %9)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.device*, %struct.device** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %53

35:                                               ; preds = %23
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %61

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.i1480u*, %struct.i1480u** %7, align 8
  %42 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %41, i32 0, i32 0
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32 @i1480u_xmit_frame(i32* %42, %struct.sk_buff* %43, %struct.uwb_dev_addr* %9)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.device*, %struct.device** %8, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %53

51:                                               ; preds = %40
  %52 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %52, i32* %3, align 4
  br label %63

53:                                               ; preds = %47, %31, %22
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %54)
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %53, %38
  %62 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %51
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.i1480u* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wlp_prepare_tx_frame(%struct.device*, i32*, %struct.sk_buff*, %struct.uwb_dev_addr*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @i1480u_xmit_frame(i32*, %struct.sk_buff*, %struct.uwb_dev_addr*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
