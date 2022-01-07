; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_rx_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_rx_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@hci_task_lock = common dso_local global i32 0, align 4
@HCI_RAW = common dso_local global i32 0, align 4
@HCI_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s ACL data packet\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s SCO data packet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @hci_rx_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_rx_task(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.hci_dev*
  store %struct.hci_dev* %6, %struct.hci_dev** %3, align 8
  %7 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = call i32 @read_lock(i32* @hci_task_lock)
  br label %12

12:                                               ; preds = %78, %46, %32, %1
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 3
  %15 = call %struct.sk_buff* @skb_dequeue(i32* %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %4, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %17, label %79

17:                                               ; preds = %12
  %18 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %19 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %18, i32 0, i32 2
  %20 = call i64 @atomic_read(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @hci_send_to_sock(%struct.hci_dev* %23, %struct.sk_buff* %24)
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* @HCI_RAW, align 4
  %28 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %29 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %28, i32 0, i32 1
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  br label %12

35:                                               ; preds = %26
  %36 = load i32, i32* @HCI_INIT, align 4
  %37 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %38 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %37, i32 0, i32 1
  %39 = call i64 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %49 [
    i32 130, label %46
    i32 128, label %46
  ]

46:                                               ; preds = %41, %41
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @kfree_skb(%struct.sk_buff* %47)
  br label %12

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %35
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %51)
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %75 [
    i32 129, label %55
    i32 130, label %59
    i32 128, label %67
  ]

55:                                               ; preds = %50
  %56 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = call i32 @hci_event_packet(%struct.hci_dev* %56, %struct.sk_buff* %57)
  br label %78

59:                                               ; preds = %50
  %60 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %61 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call i32 @hci_acldata_packet(%struct.hci_dev* %64, %struct.sk_buff* %65)
  br label %78

67:                                               ; preds = %50
  %68 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %69 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call i32 @hci_scodata_packet(%struct.hci_dev* %72, %struct.sk_buff* %73)
  br label %78

75:                                               ; preds = %50
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = call i32 @kfree_skb(%struct.sk_buff* %76)
  br label %78

78:                                               ; preds = %75, %67, %59, %55
  br label %12

79:                                               ; preds = %12
  %80 = call i32 @read_unlock(i32* @hci_task_lock)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @hci_send_to_sock(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @hci_event_packet(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_acldata_packet(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @hci_scodata_packet(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
