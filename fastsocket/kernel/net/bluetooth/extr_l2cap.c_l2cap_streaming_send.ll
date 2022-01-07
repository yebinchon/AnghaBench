; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_streaming_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_streaming_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.sk_buff* }
%struct.sk_buff = type { i64, i64 }
%struct.l2cap_pinfo = type { i32, i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@L2CAP_HDR_SIZE = common dso_local global i64 0, align 8
@L2CAP_CTRL_TXSEQ_SHIFT = common dso_local global i32 0, align 4
@L2CAP_FCS_CRC16 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @l2cap_streaming_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_streaming_send(%struct.sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.l2cap_pinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  %10 = load %struct.sock*, %struct.sock** %3, align 8
  %11 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %10)
  store %struct.l2cap_pinfo* %11, %struct.l2cap_pinfo** %6, align 8
  br label %12

12:                                               ; preds = %103, %1
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %4, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  br i1 %16, label %17, label %109

17:                                               ; preds = %12
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %5, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @L2CAP_HDR_SIZE, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @get_unaligned_le16(i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %28 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @L2CAP_CTRL_TXSEQ_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @L2CAP_HDR_SIZE, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @put_unaligned_le16(i32 %34, i64 %39)
  %41 = load %struct.sock*, %struct.sock** %3, align 8
  %42 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %41)
  %43 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @L2CAP_FCS_CRC16, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %67

47:                                               ; preds = %17
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %54, 2
  %56 = call i32 @crc16(i32 0, i32* %51, i64 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = sub nsw i64 %64, 2
  %66 = call i32 @put_unaligned_le16(i32 %57, i64 %65)
  br label %67

67:                                               ; preds = %47, %17
  %68 = load %struct.sock*, %struct.sock** %3, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call i32 @l2cap_do_send(%struct.sock* %68, %struct.sk_buff* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %75 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.sock*, %struct.sock** %3, align 8
  %78 = call i32 @l2cap_send_disconn_req(i32 %76, %struct.sock* %77)
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %2, align 4
  br label %110

80:                                               ; preds = %67
  %81 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %82 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  %85 = srem i32 %84, 64
  %86 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %87 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.sock*, %struct.sock** %3, align 8
  %89 = call i32 @TX_QUEUE(%struct.sock* %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = call i64 @skb_queue_is_last(i32 %89, %struct.sk_buff* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %80
  %94 = load %struct.sock*, %struct.sock** %3, align 8
  %95 = getelementptr inbounds %struct.sock, %struct.sock* %94, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %95, align 8
  br label %103

96:                                               ; preds = %80
  %97 = load %struct.sock*, %struct.sock** %3, align 8
  %98 = call i32 @TX_QUEUE(%struct.sock* %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = call %struct.sk_buff* @skb_queue_next(i32 %98, %struct.sk_buff* %99)
  %101 = load %struct.sock*, %struct.sock** %3, align 8
  %102 = getelementptr inbounds %struct.sock, %struct.sock* %101, i32 0, i32 0
  store %struct.sk_buff* %100, %struct.sk_buff** %102, align 8
  br label %103

103:                                              ; preds = %96, %93
  %104 = load %struct.sock*, %struct.sock** %3, align 8
  %105 = call i32 @TX_QUEUE(%struct.sock* %104)
  %106 = call %struct.sk_buff* @skb_dequeue(i32 %105)
  store %struct.sk_buff* %106, %struct.sk_buff** %4, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = call i32 @kfree_skb(%struct.sk_buff* %107)
  br label %12

109:                                              ; preds = %12
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %73
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local %struct.l2cap_pinfo* @l2cap_pi(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @get_unaligned_le16(i64) #1

declare dso_local i32 @put_unaligned_le16(i32, i64) #1

declare dso_local i32 @crc16(i32, i32*, i64) #1

declare dso_local i32 @l2cap_do_send(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @l2cap_send_disconn_req(i32, %struct.sock*) #1

declare dso_local i64 @skb_queue_is_last(i32, %struct.sk_buff*) #1

declare dso_local i32 @TX_QUEUE(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_queue_next(i32, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
