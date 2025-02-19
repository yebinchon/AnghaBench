; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_send_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }
%struct.hci_dev = type { i32 (%struct.sk_buff*)*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s type %d len %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @hci_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_send_frame(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.hci_dev*
  store %struct.hci_dev* %8, %struct.hci_dev** %4, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %10 = icmp ne %struct.hci_dev* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call i32 @kfree_skb(%struct.sk_buff* %12)
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %46

16:                                               ; preds = %1
  %17 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %21 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23, i32 %26)
  %28 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %28, i32 0, i32 1
  %30 = call i64 @atomic_read(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %16
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call i32 @__net_timestamp(%struct.sk_buff* %33)
  %35 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %37 = call i32 @hci_send_to_sock(%struct.hci_dev* %35, %struct.sk_buff* %36)
  br label %38

38:                                               ; preds = %32, %16
  %39 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %40 = call i32 @skb_orphan(%struct.sk_buff* %39)
  %41 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %41, i32 0, i32 0
  %43 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %42, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = call i32 %43(%struct.sk_buff* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %38, %11
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @__net_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @hci_send_to_sock(%struct.hci_dev*, %struct.sk_buff*) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
