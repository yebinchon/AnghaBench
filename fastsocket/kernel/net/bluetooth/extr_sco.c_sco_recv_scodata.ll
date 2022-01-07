; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_recv_scodata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_sco.c_sco_recv_scodata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { %struct.sco_conn* }
%struct.sco_conn = type { i32 }
%struct.sk_buff = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"conn %p len %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_conn*, %struct.sk_buff*)* @sco_recv_scodata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sco_recv_scodata(%struct.hci_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_conn*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sco_conn*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.hci_conn*, %struct.hci_conn** %4, align 8
  %8 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %7, i32 0, i32 0
  %9 = load %struct.sco_conn*, %struct.sco_conn** %8, align 8
  store %struct.sco_conn* %9, %struct.sco_conn** %6, align 8
  %10 = load %struct.sco_conn*, %struct.sco_conn** %6, align 8
  %11 = icmp ne %struct.sco_conn* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.sco_conn*, %struct.sco_conn** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.sco_conn* %14, i64 %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = load %struct.sco_conn*, %struct.sco_conn** %6, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @sco_recv_frame(%struct.sco_conn* %24, %struct.sk_buff* %25)
  store i32 0, i32* %3, align 4
  br label %31

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27, %12
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @kfree_skb(%struct.sk_buff* %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @BT_DBG(i8*, %struct.sco_conn*, i64) #1

declare dso_local i32 @sco_recv_frame(%struct.sco_conn*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
