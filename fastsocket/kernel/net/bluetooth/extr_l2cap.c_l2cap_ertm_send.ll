; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_ertm_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_ertm_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.sk_buff* }
%struct.sk_buff = type { i64, i64 }
%struct.l2cap_pinfo = type { i32, i64, i32, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@L2CAP_CONN_WAIT_F = common dso_local global i32 0, align 4
@L2CAP_CONN_REMOTE_BUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@L2CAP_HDR_SIZE = common dso_local global i64 0, align 8
@L2CAP_CTRL_REQSEQ_SHIFT = common dso_local global i32 0, align 4
@L2CAP_CTRL_TXSEQ_SHIFT = common dso_local global i32 0, align 4
@L2CAP_FCS_CRC16 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*)* @l2cap_ertm_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_ertm_send(%struct.sock* %0) #0 {
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
  %12 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %13 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @L2CAP_CONN_WAIT_F, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %169

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %167, %19
  %21 = load %struct.sock*, %struct.sock** %3, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %4, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = call i32 @l2cap_tx_window_full(%struct.sock* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %31 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @L2CAP_CONN_REMOTE_BUSY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %29, %25, %20
  %38 = phi i1 [ false, %25 ], [ false, %20 ], [ %36, %29 ]
  br i1 %38, label %39, label %168

39:                                               ; preds = %37
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %40, i32 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %5, align 8
  %43 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %44 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %39
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %53 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %58 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sock*, %struct.sock** %3, align 8
  %61 = call i32 @l2cap_send_disconn_req(i32 %59, %struct.sock* %60)
  br label %168

62:                                               ; preds = %47, %39
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @L2CAP_HDR_SIZE, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @get_unaligned_le16(i64 %72)
  store i32 %73, i32* %7, align 4
  %74 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %75 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @L2CAP_CTRL_REQSEQ_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %80 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @L2CAP_CTRL_TXSEQ_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = or i32 %78, %83
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @L2CAP_HDR_SIZE, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @put_unaligned_le16(i32 %87, i64 %92)
  %94 = load %struct.sock*, %struct.sock** %3, align 8
  %95 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %94)
  %96 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @L2CAP_FCS_CRC16, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %120

100:                                              ; preds = %62
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i32*
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = sub nsw i64 %107, 2
  %109 = call i32 @crc16(i32 0, i32* %104, i64 %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %113, %116
  %118 = sub nsw i64 %117, 2
  %119 = call i32 @put_unaligned_le16(i32 %110, i64 %118)
  br label %120

120:                                              ; preds = %100, %62
  %121 = load %struct.sock*, %struct.sock** %3, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = call i32 @l2cap_do_send(%struct.sock* %121, %struct.sk_buff* %122)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %120
  %127 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %128 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.sock*, %struct.sock** %3, align 8
  %131 = call i32 @l2cap_send_disconn_req(i32 %129, %struct.sock* %130)
  %132 = load i32, i32* %9, align 4
  store i32 %132, i32* %2, align 4
  br label %169

133:                                              ; preds = %120
  %134 = call i32 (...) @__mod_retrans_timer()
  %135 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %136 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %139 = call %struct.TYPE_2__* @bt_cb(%struct.sk_buff* %138)
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  store i32 %137, i32* %140, align 8
  %141 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %142 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  %145 = srem i32 %144, 64
  %146 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %147 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %146, i32 0, i32 3
  store i32 %145, i32* %147, align 4
  %148 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %6, align 8
  %149 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 8
  %152 = load %struct.sock*, %struct.sock** %3, align 8
  %153 = call i32 @TX_QUEUE(%struct.sock* %152)
  %154 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %155 = call i64 @skb_queue_is_last(i32 %153, %struct.sk_buff* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %133
  %158 = load %struct.sock*, %struct.sock** %3, align 8
  %159 = getelementptr inbounds %struct.sock, %struct.sock* %158, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %159, align 8
  br label %167

160:                                              ; preds = %133
  %161 = load %struct.sock*, %struct.sock** %3, align 8
  %162 = call i32 @TX_QUEUE(%struct.sock* %161)
  %163 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %164 = call %struct.sk_buff* @skb_queue_next(i32 %162, %struct.sk_buff* %163)
  %165 = load %struct.sock*, %struct.sock** %3, align 8
  %166 = getelementptr inbounds %struct.sock, %struct.sock* %165, i32 0, i32 0
  store %struct.sk_buff* %164, %struct.sk_buff** %166, align 8
  br label %167

167:                                              ; preds = %160, %157
  br label %20

168:                                              ; preds = %56, %37
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %168, %126, %18
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local %struct.l2cap_pinfo* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @l2cap_tx_window_full(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local %struct.TYPE_2__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @l2cap_send_disconn_req(i32, %struct.sock*) #1

declare dso_local i32 @get_unaligned_le16(i64) #1

declare dso_local i32 @put_unaligned_le16(i32, i64) #1

declare dso_local i32 @crc16(i32, i32*, i64) #1

declare dso_local i32 @l2cap_do_send(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @__mod_retrans_timer(...) #1

declare dso_local i64 @skb_queue_is_last(i32, %struct.sk_buff*) #1

declare dso_local i32 @TX_QUEUE(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_queue_next(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
