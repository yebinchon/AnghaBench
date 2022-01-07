; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_sched_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_core.c_hci_sched_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i64, i32, i32 }
%struct.hci_conn = type { i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_RAW = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"skb %p len %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*)* @hci_sched_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_sched_acl(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %6 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %7 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.sk_buff*
  %11 = call i32 (i8*, %struct.sk_buff*, ...) @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %10)
  %12 = load i32, i32* @HCI_RAW, align 4
  %13 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 2
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %1
  %18 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %17
  %23 = load i64, i64* @jiffies, align 8
  %24 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %25 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @HZ, align 4
  %28 = mul nsw i32 %27, 45
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %26, %29
  %31 = call i64 @time_after(i64 %23, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %35 = call i32 @hci_acl_tx_to(%struct.hci_dev* %34)
  br label %36

36:                                               ; preds = %33, %22, %17
  br label %37

37:                                               ; preds = %36, %1
  br label %38

38:                                               ; preds = %83, %37
  %39 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %45 = load i32, i32* @ACL_LINK, align 4
  %46 = call %struct.hci_conn* @hci_low_sent(%struct.hci_dev* %44, i32 %45, i32* %5)
  store %struct.hci_conn* %46, %struct.hci_conn** %3, align 8
  %47 = icmp ne %struct.hci_conn* %46, null
  br label %48

48:                                               ; preds = %43, %38
  %49 = phi i1 [ false, %38 ], [ %47, %43 ]
  br i1 %49, label %50, label %84

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %62, %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %5, align 4
  %54 = icmp ne i32 %52, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %57 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %56, i32 0, i32 1
  %58 = call %struct.sk_buff* @skb_dequeue(i32* %57)
  store %struct.sk_buff* %58, %struct.sk_buff** %4, align 8
  %59 = icmp ne %struct.sk_buff* %58, null
  br label %60

60:                                               ; preds = %55, %51
  %61 = phi i1 [ false, %51 ], [ %59, %55 ]
  br i1 %61, label %62, label %83

62:                                               ; preds = %60
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, %struct.sk_buff*, ...) @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %63, i32 %66)
  %68 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %69 = call i32 @hci_conn_enter_active_mode(%struct.hci_conn* %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call i32 @hci_send_frame(%struct.sk_buff* %70)
  %72 = load i64, i64* @jiffies, align 8
  %73 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %74 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %76 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, -1
  store i64 %78, i64* %76, align 8
  %79 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %80 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %51

83:                                               ; preds = %60
  br label %38

84:                                               ; preds = %48
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.sk_buff*, ...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @hci_acl_tx_to(%struct.hci_dev*) #1

declare dso_local %struct.hci_conn* @hci_low_sent(%struct.hci_dev*, i32, i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @hci_conn_enter_active_mode(%struct.hci_conn*) #1

declare dso_local i32 @hci_send_frame(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
