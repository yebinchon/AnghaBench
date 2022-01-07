; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_output.c_dccp_transmit_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/extr_output.c_dccp_transmit_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.inet_sock = type { i32, i32 }
%struct.inet_connection_sock = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.sk_buff*, i32)*, i32 (%struct.sock*, i32, %struct.sk_buff*)* }
%struct.dccp_sock = type { i32, i32, i32, i32, i32, i32 }
%struct.dccp_skb_cb = type { i32, i32, i32, i32, i32, i32 }
%struct.dccp_hdr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EPROTO = common dso_local global i32 0, align 4
@DCCP_MIB_OUTSEGS = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @dccp_transmit_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_transmit_skb(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.inet_sock*, align 8
  %7 = alloca %struct.inet_connection_sock*, align 8
  %8 = alloca %struct.dccp_sock*, align 8
  %9 = alloca %struct.dccp_skb_cb*, align 8
  %10 = alloca %struct.dccp_hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = icmp ne %struct.sk_buff* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %189

20:                                               ; preds = %2
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = call %struct.inet_sock* @inet_sk(%struct.sock* %21)
  store %struct.inet_sock* %22, %struct.inet_sock** %6, align 8
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %23)
  store %struct.inet_connection_sock* %24, %struct.inet_connection_sock** %7, align 8
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %25)
  store %struct.dccp_sock* %26, %struct.dccp_sock** %8, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call %struct.dccp_skb_cb* @DCCP_SKB_CB(%struct.sk_buff* %27)
  store %struct.dccp_skb_cb* %28, %struct.dccp_skb_cb** %9, align 8
  %29 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %9, align 8
  %30 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dccp_packet_hdr_len(i32 %31)
  %33 = sext i32 %32 to i64
  %34 = add i64 32, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %11, align 4
  store i32 1, i32* %13, align 4
  %36 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %37 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %14, align 4
  %39 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %40 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ADD48(i32 %41, i32 1)
  %43 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %9, align 8
  %44 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %9, align 8
  %46 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %66 [
    i32 133, label %48
    i32 132, label %49
    i32 130, label %49
    i32 131, label %50
    i32 129, label %62
    i32 128, label %62
  ]

48:                                               ; preds = %20
  store i32 0, i32* %13, align 4
  br label %49

49:                                               ; preds = %20, %20, %48
  br label %74

50:                                               ; preds = %20
  store i32 0, i32* %13, align 4
  %51 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %52 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %57 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %9, align 8
  %60 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %50
  br label %62

62:                                               ; preds = %20, %20, %61
  %63 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %9, align 8
  %64 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %20, %62
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @WARN_ON(i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = load %struct.sock*, %struct.sock** %4, align 8
  %73 = call i32 @skb_set_owner_w(%struct.sk_buff* %71, %struct.sock* %72)
  br label %74

74:                                               ; preds = %66, %49
  %75 = load %struct.sock*, %struct.sock** %4, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = call i64 @dccp_insert_options(%struct.sock* %75, %struct.sk_buff* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = call i32 @kfree_skb(%struct.sk_buff* %80)
  %82 = load i32, i32* @EPROTO, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %192

84:                                               ; preds = %74
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call %struct.dccp_hdr* @dccp_zeroed_hdr(%struct.sk_buff* %85, i32 %86)
  store %struct.dccp_hdr* %87, %struct.dccp_hdr** %10, align 8
  %88 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %9, align 8
  %89 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.dccp_hdr*, %struct.dccp_hdr** %10, align 8
  %92 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %94 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.dccp_hdr*, %struct.dccp_hdr** %10, align 8
  %97 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %96, i32 0, i32 6
  store i32 %95, i32* %97, align 4
  %98 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %99 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.dccp_hdr*, %struct.dccp_hdr** %10, align 8
  %102 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %9, align 8
  %105 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %103, %106
  %108 = sdiv i32 %107, 4
  %109 = load %struct.dccp_hdr*, %struct.dccp_hdr** %10, align 8
  %110 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %9, align 8
  %112 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.dccp_hdr*, %struct.dccp_hdr** %10, align 8
  %115 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %117 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.dccp_hdr*, %struct.dccp_hdr** %10, align 8
  %120 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.dccp_hdr*, %struct.dccp_hdr** %10, align 8
  %122 = getelementptr inbounds %struct.dccp_hdr, %struct.dccp_hdr* %121, i32 0, i32 2
  store i32 1, i32* %122, align 4
  %123 = load %struct.sock*, %struct.sock** %4, align 8
  %124 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %9, align 8
  %125 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @dccp_update_gss(%struct.sock* %123, i32 %126)
  %128 = load %struct.dccp_hdr*, %struct.dccp_hdr** %10, align 8
  %129 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %130 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @dccp_hdr_set_seq(%struct.dccp_hdr* %128, i32 %131)
  %133 = load i32, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %84
  %136 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %137 = call i32 @dccp_hdr_ack_bits(%struct.sk_buff* %136)
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @dccp_hdr_set_ack(i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %135, %84
  %141 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %9, align 8
  %142 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  switch i32 %143, label %163 [
    i32 131, label %144
    i32 130, label %156
  ]

144:                                              ; preds = %140
  %145 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %146 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %149 = call %struct.TYPE_6__* @dccp_hdr_request(%struct.sk_buff* %148)
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store i32 %147, i32* %150, align 4
  %151 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %152 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %155 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  br label %163

156:                                              ; preds = %140
  %157 = load %struct.dccp_skb_cb*, %struct.dccp_skb_cb** %9, align 8
  %158 = getelementptr inbounds %struct.dccp_skb_cb, %struct.dccp_skb_cb* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %161 = call %struct.TYPE_5__* @dccp_hdr_reset(%struct.sk_buff* %160)
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  store i32 %159, i32* %162, align 4
  br label %163

163:                                              ; preds = %140, %156, %144
  %164 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %165 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %164, i32 0, i32 0
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load i32 (%struct.sock*, i32, %struct.sk_buff*)*, i32 (%struct.sock*, i32, %struct.sk_buff*)** %167, align 8
  %169 = load %struct.sock*, %struct.sock** %4, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %171 = call i32 %168(%struct.sock* %169, i32 0, %struct.sk_buff* %170)
  %172 = load i32, i32* %13, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %163
  %175 = load %struct.sock*, %struct.sock** %4, align 8
  %176 = call i32 @dccp_event_ack_sent(%struct.sock* %175)
  br label %177

177:                                              ; preds = %174, %163
  %178 = load i32, i32* @DCCP_MIB_OUTSEGS, align 4
  %179 = call i32 @DCCP_INC_STATS(i32 %178)
  %180 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %7, align 8
  %181 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %180, i32 0, i32 0
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32 (%struct.sk_buff*, i32)*, i32 (%struct.sk_buff*, i32)** %183, align 8
  %185 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %186 = call i32 %184(%struct.sk_buff* %185, i32 0)
  store i32 %186, i32* %12, align 4
  %187 = load i32, i32* %12, align 4
  %188 = call i32 @net_xmit_eval(i32 %187)
  store i32 %188, i32* %3, align 4
  br label %192

189:                                              ; preds = %2
  %190 = load i32, i32* @ENOBUFS, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %3, align 4
  br label %192

192:                                              ; preds = %189, %177, %79
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.dccp_skb_cb* @DCCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @dccp_packet_hdr_len(i32) #1

declare dso_local i32 @ADD48(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, %struct.sock*) #1

declare dso_local i64 @dccp_insert_options(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.dccp_hdr* @dccp_zeroed_hdr(%struct.sk_buff*, i32) #1

declare dso_local i32 @dccp_update_gss(%struct.sock*, i32) #1

declare dso_local i32 @dccp_hdr_set_seq(%struct.dccp_hdr*, i32) #1

declare dso_local i32 @dccp_hdr_set_ack(i32, i32) #1

declare dso_local i32 @dccp_hdr_ack_bits(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @dccp_hdr_request(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @dccp_hdr_reset(%struct.sk_buff*) #1

declare dso_local i32 @dccp_event_ack_sent(%struct.sock*) #1

declare dso_local i32 @DCCP_INC_STATS(i32) #1

declare dso_local i32 @net_xmit_eval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
