; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/bnep/extr_core.c_bnep_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/bnep/extr_core.c_bnep_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnep_session = type { %struct.TYPE_2__*, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i32, %struct.sock* }
%struct.sock = type { i64, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"kbnepd %s\00", align 1
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i64 0, align 8
@TASK_RUNNING = common dso_local global i32 0, align 4
@bnep_session_sem = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bnep_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnep_session(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bnep_session*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.bnep_session*
  store %struct.bnep_session* %9, %struct.bnep_session** %3, align 8
  %10 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %11 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %14 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %5, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @daemonize(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @current, align 4
  %24 = call i32 @set_user_nice(i32 %23, i32 -15)
  %25 = load i32, i32* @current, align 4
  %26 = call i32 @init_waitqueue_entry(i32* %7, i32 %25)
  %27 = load %struct.sock*, %struct.sock** %5, align 8
  %28 = getelementptr inbounds %struct.sock, %struct.sock* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @add_wait_queue(i32 %29, i32* %7)
  br label %31

31:                                               ; preds = %71, %1
  %32 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %33 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %32, i32 0, i32 1
  %34 = call i32 @atomic_read(i32* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %37, label %75

37:                                               ; preds = %31
  %38 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %39 = call i32 @set_current_state(i32 %38)
  br label %40

40:                                               ; preds = %45, %37
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 4
  %43 = call %struct.sk_buff* @skb_dequeue(i32* %42)
  store %struct.sk_buff* %43, %struct.sk_buff** %6, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = call i32 @skb_orphan(%struct.sk_buff* %46)
  %48 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = call i32 @bnep_rx_frame(%struct.bnep_session* %48, %struct.sk_buff* %49)
  br label %40

51:                                               ; preds = %40
  %52 = load %struct.sock*, %struct.sock** %5, align 8
  %53 = getelementptr inbounds %struct.sock, %struct.sock* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @BT_CONNECTED, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %75

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %70, %58
  %60 = load %struct.sock*, %struct.sock** %5, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 3
  %62 = call %struct.sk_buff* @skb_dequeue(i32* %61)
  store %struct.sk_buff* %62, %struct.sk_buff** %6, align 8
  %63 = icmp ne %struct.sk_buff* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = call i64 @bnep_tx_frame(%struct.bnep_session* %65, %struct.sk_buff* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %71

70:                                               ; preds = %64
  br label %59

71:                                               ; preds = %69, %59
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = call i32 @netif_wake_queue(%struct.net_device* %72)
  %74 = call i32 (...) @schedule()
  br label %31

75:                                               ; preds = %57, %31
  %76 = load i32, i32* @TASK_RUNNING, align 4
  %77 = call i32 @set_current_state(i32 %76)
  %78 = load %struct.sock*, %struct.sock** %5, align 8
  %79 = getelementptr inbounds %struct.sock, %struct.sock* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @remove_wait_queue(i32 %80, i32* %7)
  %82 = call i32 @down_write(i32* @bnep_session_sem)
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = call i32 @unregister_netdev(%struct.net_device* %83)
  %85 = load i32, i32* @EUNATCH, align 4
  %86 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %87 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load %struct.sock*, %struct.sock** %89, align 8
  %91 = getelementptr inbounds %struct.sock, %struct.sock* %90, i32 0, i32 2
  store i32 %85, i32* %91, align 4
  %92 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %93 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load %struct.sock*, %struct.sock** %95, align 8
  %97 = getelementptr inbounds %struct.sock, %struct.sock* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @wake_up_interruptible(i32 %98)
  %100 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %101 = getelementptr inbounds %struct.bnep_session, %struct.bnep_session* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @fput(i32 %104)
  %106 = load %struct.bnep_session*, %struct.bnep_session** %3, align 8
  %107 = call i32 @__bnep_unlink_session(%struct.bnep_session* %106)
  %108 = call i32 @up_write(i32* @bnep_session_sem)
  %109 = load %struct.net_device*, %struct.net_device** %4, align 8
  %110 = call i32 @free_netdev(%struct.net_device* %109)
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @daemonize(i8*, i32) #1

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i32 @init_waitqueue_entry(i32*, i32) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @bnep_rx_frame(%struct.bnep_session*, %struct.sk_buff*) #1

declare dso_local i64 @bnep_tx_frame(%struct.bnep_session*, %struct.sk_buff*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @wake_up_interruptible(i32) #1

declare dso_local i32 @fput(i32) #1

declare dso_local i32 @__bnep_unlink_session(%struct.bnep_session*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
