; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_retransmit_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_retransmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.l2cap_pinfo = type { i64, i32, i64, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@L2CAP_HDR_SIZE = common dso_local global i64 0, align 8
@L2CAP_CTRL_REQSEQ_SHIFT = common dso_local global i32 0, align 4
@L2CAP_CTRL_TXSEQ_SHIFT = common dso_local global i32 0, align 4
@L2CAP_FCS_CRC16 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32)* @l2cap_retransmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_retransmit_frame(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2cap_pinfo*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %12)
  store %struct.l2cap_pinfo* %13, %struct.l2cap_pinfo** %6, align 8
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call i32 @TX_QUEUE(%struct.sock* %14)
  %16 = call %struct.sk_buff* @skb_peek(i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %7, align 8
  br label %17

17:                                               ; preds = %129, %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %17
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call i32 @TX_QUEUE(%struct.sock* %25)
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = call i64 @skb_queue_is_last(i32 %26, %struct.sk_buff* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %130

31:                                               ; preds = %24
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = call i32 @TX_QUEUE(%struct.sock* %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call %struct.sk_buff* @skb_queue_next(i32 %33, %struct.sk_buff* %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %7, align 8
  br label %129

36:                                               ; preds = %17
  %37 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %38 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %42)
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %47 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %52 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sock*, %struct.sock** %4, align 8
  %55 = call i32 @l2cap_send_disconn_req(i32 %53, %struct.sock* %54)
  br label %130

56:                                               ; preds = %41, %36
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = load i32, i32* @GFP_ATOMIC, align 4
  %59 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %57, i32 %58)
  store %struct.sk_buff* %59, %struct.sk_buff** %8, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @L2CAP_HDR_SIZE, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @get_unaligned_le16(i64 %69)
  store i32 %70, i32* %9, align 4
  %71 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %72 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @L2CAP_CTRL_REQSEQ_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @L2CAP_CTRL_TXSEQ_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = or i32 %75, %78
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @L2CAP_HDR_SIZE, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @put_unaligned_le16(i32 %82, i64 %87)
  %89 = load %struct.sock*, %struct.sock** %4, align 8
  %90 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %89)
  %91 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @L2CAP_FCS_CRC16, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %115

95:                                               ; preds = %56
  %96 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i32*
  %100 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %102, 2
  %104 = call i32 @crc16(i32 0, i32* %99, i64 %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %108, %111
  %113 = sub nsw i64 %112, 2
  %114 = call i32 @put_unaligned_le16(i32 %105, i64 %113)
  br label %115

115:                                              ; preds = %95, %56
  %116 = load %struct.sock*, %struct.sock** %4, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %118 = call i32 @l2cap_do_send(%struct.sock* %116, %struct.sk_buff* %117)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %115
  %122 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %123 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.sock*, %struct.sock** %4, align 8
  %126 = call i32 @l2cap_send_disconn_req(i32 %124, %struct.sock* %125)
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %3, align 4
  br label %131

128:                                              ; preds = %115
  br label %130

129:                                              ; preds = %31
  br i1 true, label %17, label %130

130:                                              ; preds = %129, %128, %50, %30
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %121
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.l2cap_pinfo* @l2cap_pi(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_peek(i32) #1

declare dso_local i32 @TX_QUEUE(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i64 @skb_queue_is_last(i32, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_queue_next(i32, %struct.sk_buff*) #1

declare dso_local i32 @l2cap_send_disconn_req(i32, %struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @get_unaligned_le16(i64) #1

declare dso_local i32 @put_unaligned_le16(i32, i64) #1

declare dso_local i32 @crc16(i32, i32*, i64) #1

declare dso_local i32 @l2cap_do_send(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
