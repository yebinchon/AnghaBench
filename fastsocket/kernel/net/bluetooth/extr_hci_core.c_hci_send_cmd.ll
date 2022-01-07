; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_send_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }
%struct.hci_command_hdr = type { i32, i32 }
%struct.sk_buff = type { i8*, i32 }
%struct.TYPE_2__ = type { i32 }

@HCI_COMMAND_HDR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s opcode 0x%x plen %d\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"%s no memory for command\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"skb len %d\00", align 1
@HCI_COMMAND_PKT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_send_cmd(%struct.hci_dev* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hci_command_hdr*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i32, i32* @HCI_COMMAND_HDR_SIZE, align 4
  %14 = load i32, i32* %8, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.sk_buff* @bt_skb_alloc(i32 %22, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %12, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %4
  %28 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %29 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @BT_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %74

34:                                               ; preds = %4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %36 = load i32, i32* @HCI_COMMAND_HDR_SIZE, align 4
  %37 = call i64 @skb_put(%struct.sk_buff* %35, i32 %36)
  %38 = inttoptr i64 %37 to %struct.hci_command_hdr*
  store %struct.hci_command_hdr* %38, %struct.hci_command_hdr** %11, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @cpu_to_le16(i32 %39)
  %41 = load %struct.hci_command_hdr*, %struct.hci_command_hdr** %11, align 8
  %42 = getelementptr inbounds %struct.hci_command_hdr, %struct.hci_command_hdr* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.hci_command_hdr*, %struct.hci_command_hdr** %11, align 8
  %45 = getelementptr inbounds %struct.hci_command_hdr, %struct.hci_command_hdr* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %34
  %49 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @skb_put(%struct.sk_buff* %49, i32 %50)
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @memcpy(i64 %51, i8* %52, i32 %53)
  br label %55

55:                                               ; preds = %48, %34
  %56 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i8*, i32, ...) @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @HCI_COMMAND_PKT, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %62 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 4
  %64 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %65 = bitcast %struct.hci_dev* %64 to i8*
  %66 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  %68 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %69 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %68, i32 0, i32 0
  %70 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %71 = call i32 @skb_queue_tail(i32* %69, %struct.sk_buff* %70)
  %72 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %73 = call i32 @hci_sched_cmd(%struct.hci_dev* %72)
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %55, %27
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @BT_DBG(i8*, i32, ...) #1

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @hci_sched_cmd(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
