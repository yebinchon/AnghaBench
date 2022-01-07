; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_af_can.c_can_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/can/extr_af_can.c_can_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.dev_rcv_lists = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i32 }
%struct.can_frame = type { i32 }

@init_net = common dso_local global i32 0, align 4
@ARPHRD_CAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"PF_CAN: dropped non conform skbuf: dev type %d, len %d, can_dlc %d\0A\00", align 1
@can_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@can_rx_alldev_list = common dso_local global %struct.dev_rcv_lists zeroinitializer, align 4
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @can_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.dev_rcv_lists*, align 8
  %11 = alloca %struct.can_frame*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.can_frame*
  store %struct.can_frame* %16, %struct.can_frame** %11, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call i32 @dev_net(%struct.net_device* %17)
  %19 = call i32 @net_eq(i32 %18, i32* @init_net)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %85

22:                                               ; preds = %4
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ARPHRD_CAN, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %39, label %28

28:                                               ; preds = %22
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 4
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load %struct.can_frame*, %struct.can_frame** %11, align 8
  %36 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 8
  br label %39

39:                                               ; preds = %34, %28, %22
  %40 = phi i1 [ true, %28 ], [ true, %22 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = load %struct.net_device*, %struct.net_device** %7, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.can_frame*, %struct.can_frame** %11, align 8
  %49 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @WARN_ONCE(i32 %41, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  br label %85

54:                                               ; preds = %39
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 3), align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 3), align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 2), align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 2), align 4
  %59 = call i32 (...) @rcu_read_lock()
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = call i32 @can_rcv_filter(%struct.dev_rcv_lists* @can_rx_alldev_list, %struct.sk_buff* %60)
  store i32 %61, i32* %12, align 4
  %62 = load %struct.net_device*, %struct.net_device** %7, align 8
  %63 = call %struct.dev_rcv_lists* @find_dev_rcv_lists(%struct.net_device* %62)
  store %struct.dev_rcv_lists* %63, %struct.dev_rcv_lists** %10, align 8
  %64 = load %struct.dev_rcv_lists*, %struct.dev_rcv_lists** %10, align 8
  %65 = icmp ne %struct.dev_rcv_lists* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %54
  %67 = load %struct.dev_rcv_lists*, %struct.dev_rcv_lists** %10, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %69 = call i32 @can_rcv_filter(%struct.dev_rcv_lists* %67, %struct.sk_buff* %68)
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %66, %54
  %73 = call i32 (...) @rcu_read_unlock()
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = call i32 @consume_skb(%struct.sk_buff* %74)
  %76 = load i32, i32* %12, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 1), align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 1), align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 0), align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @can_stats, i32 0, i32 0), align 4
  br label %83

83:                                               ; preds = %78, %72
  %84 = load i32, i32* @NET_RX_SUCCESS, align 4
  store i32 %84, i32* %5, align 4
  br label %89

85:                                               ; preds = %53, %21
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = call i32 @kfree_skb(%struct.sk_buff* %86)
  %88 = load i32, i32* @NET_RX_DROP, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %85, %83
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i64 @WARN_ONCE(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @can_rcv_filter(%struct.dev_rcv_lists*, %struct.sk_buff*) #1

declare dso_local %struct.dev_rcv_lists* @find_dev_rcv_lists(%struct.net_device*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
