; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_recv_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_recv_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.l2cap_hdr = type { i32, i32 }

@L2CAP_HDR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"len %d, cid 0x%4.4x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_conn*, %struct.sk_buff*)* @l2cap_recv_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_recv_frame(%struct.l2cap_conn* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.l2cap_conn*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.l2cap_hdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.l2cap_hdr*
  store %struct.l2cap_hdr* %13, %struct.l2cap_hdr** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load i32, i32* @L2CAP_HDR_SIZE, align 4
  %16 = call i32 @skb_pull(%struct.sk_buff* %14, i32 %15)
  %17 = load %struct.l2cap_hdr*, %struct.l2cap_hdr** %5, align 8
  %18 = getelementptr inbounds %struct.l2cap_hdr, %struct.l2cap_hdr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @__le16_to_cpu(i32 %19)
  store i64 %20, i64* %6, align 8
  %21 = load %struct.l2cap_hdr*, %struct.l2cap_hdr** %5, align 8
  %22 = getelementptr inbounds %struct.l2cap_hdr, %struct.l2cap_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @__le16_to_cpu(i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @kfree_skb(%struct.sk_buff* %31)
  br label %58

33:                                               ; preds = %2
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %35)
  %37 = load i64, i64* %6, align 8
  switch i64 %37, label %53 [
    i64 128, label %38
    i64 129, label %42
  ]

38:                                               ; preds = %33
  %39 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = call i32 @l2cap_sig_channel(%struct.l2cap_conn* %39, %struct.sk_buff* %40)
  br label %58

42:                                               ; preds = %33
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @get_unaligned_le16(i64 %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @skb_pull(%struct.sk_buff* %47, i32 2)
  %49 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = call i32 @l2cap_conless_channel(%struct.l2cap_conn* %49, i32 %50, %struct.sk_buff* %51)
  br label %58

53:                                               ; preds = %33
  %54 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call i32 @l2cap_data_channel(%struct.l2cap_conn* %54, i64 %55, %struct.sk_buff* %56)
  br label %58

58:                                               ; preds = %30, %53, %42, %38
  ret void
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @__le16_to_cpu(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @BT_DBG(i8*, i64, i64) #1

declare dso_local i32 @l2cap_sig_channel(%struct.l2cap_conn*, %struct.sk_buff*) #1

declare dso_local i32 @get_unaligned_le16(i64) #1

declare dso_local i32 @l2cap_conless_channel(%struct.l2cap_conn*, i32, %struct.sk_buff*) #1

declare dso_local i32 @l2cap_data_channel(%struct.l2cap_conn*, i64, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
