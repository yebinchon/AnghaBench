; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid3.c_ccid3_hc_rx_packet_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_ccid3.c_ccid3_hc_rx_packet_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i64 }
%struct.ccid3_hc_rx_sock = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@CCID3_FBACK_NONE = common dso_local global i32 0, align 4
@TFRC_RSTATE_NO_DATA = common dso_local global i64 0, align 8
@CCID3_FBACK_INITIAL = common dso_local global i32 0, align 4
@TFRC_RSTATE_DATA = common dso_local global i32 0, align 4
@ccid3_first_li = common dso_local global i32 0, align 4
@CCID3_FBACK_PARAM_CHANGE = common dso_local global i32 0, align 4
@CCID3_FBACK_PERIODIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sk_buff*)* @ccid3_hc_rx_packet_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccid3_hc_rx_packet_recv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ccid3_hc_rx_sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %3, align 8
  %13 = call %struct.ccid3_hc_rx_sock* @ccid3_hc_rx_sk(%struct.sock* %12)
  store %struct.ccid3_hc_rx_sock* %13, %struct.ccid3_hc_rx_sock** %5, align 8
  %14 = load i32, i32* @CCID3_FBACK_NONE, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = call %struct.TYPE_5__* @dccp_sk(%struct.sock* %15)
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @dccp_data_packet(%struct.sk_buff* %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %5, align 8
  %23 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @TFRC_RSTATE_NO_DATA, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call %struct.TYPE_6__* @dccp_hdr(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %36, %42
  store i64 %43, i64* %9, align 8
  %44 = load i32, i32* @CCID3_FBACK_INITIAL, align 4
  store i32 %44, i32* %6, align 4
  %45 = load %struct.sock*, %struct.sock** %3, align 8
  %46 = load i32, i32* @TFRC_RSTATE_DATA, align 4
  %47 = call i32 @ccid3_hc_rx_set_state(%struct.sock* %45, i32 %46)
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %5, align 8
  %50 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %33, %30
  br label %159

52:                                               ; preds = %2
  %53 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %5, align 8
  %54 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %53, i32 0, i32 3
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call i64 @tfrc_rx_hist_duplicate(i32* %54, %struct.sk_buff* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %173

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %59
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call %struct.TYPE_6__* @dccp_hdr(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 4
  %71 = sext i32 %70 to i64
  %72 = sub nsw i64 %65, %71
  store i64 %72, i64* %10, align 8
  %73 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %5, align 8
  %74 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i8* @tfrc_ewma(i64 %75, i64 %76, i32 9)
  %78 = ptrtoint i8* %77 to i64
  %79 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %5, align 8
  %80 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %5, align 8
  %83 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %81
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  br label %88

88:                                               ; preds = %62, %59
  %89 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %5, align 8
  %90 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %89, i32 0, i32 3
  %91 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %5, align 8
  %92 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %91, i32 0, i32 5
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @ccid3_first_li, align 4
  %96 = load %struct.sock*, %struct.sock** %3, align 8
  %97 = call i64 @tfrc_rx_handle_loss(i32* %90, i32* %92, %struct.sk_buff* %93, i32 %94, i32 %95, %struct.sock* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %88
  %100 = load i32, i32* @CCID3_FBACK_PARAM_CHANGE, align 4
  store i32 %100, i32* %6, align 4
  br label %165

101:                                              ; preds = %88
  %102 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %5, align 8
  %103 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %102, i32 0, i32 3
  %104 = call i64 @tfrc_rx_hist_loss_pending(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %173

107:                                              ; preds = %101
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i64 @unlikely(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %159

115:                                              ; preds = %107
  %116 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %5, align 8
  %117 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %116, i32 0, i32 5
  %118 = call i32 @tfrc_lh_is_initialised(i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %137, label %120

120:                                              ; preds = %115
  %121 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %5, align 8
  %122 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %121, i32 0, i32 3
  %123 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %124 = call i64 @tfrc_rx_hist_sample_rtt(i32* %122, %struct.sk_buff* %123)
  store i64 %124, i64* %11, align 8
  %125 = load i64, i64* %11, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %120
  %128 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %5, align 8
  %129 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %11, align 8
  %132 = call i8* @tfrc_ewma(i64 %130, i64 %131, i32 9)
  %133 = ptrtoint i8* %132 to i64
  %134 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %5, align 8
  %135 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %134, i32 0, i32 2
  store i64 %133, i64* %135, align 8
  br label %136

136:                                              ; preds = %127, %120
  br label %146

137:                                              ; preds = %115
  %138 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %5, align 8
  %139 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %138, i32 0, i32 5
  %140 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %141 = call i64 @tfrc_lh_update_i_mean(i32* %139, %struct.sk_buff* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32, i32* @CCID3_FBACK_PARAM_CHANGE, align 4
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %143, %137
  br label %146

146:                                              ; preds = %145, %136
  %147 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %148 = call %struct.TYPE_6__* @dccp_hdr(%struct.sk_buff* %147)
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %5, align 8
  %152 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @SUB16(i32 %150, i32 %153)
  %155 = icmp sgt i32 %154, 3
  br i1 %155, label %156, label %158

156:                                              ; preds = %146
  %157 = load i32, i32* @CCID3_FBACK_PERIODIC, align 4
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %156, %146
  br label %159

159:                                              ; preds = %158, %114, %51
  %160 = load %struct.ccid3_hc_rx_sock*, %struct.ccid3_hc_rx_sock** %5, align 8
  %161 = getelementptr inbounds %struct.ccid3_hc_rx_sock, %struct.ccid3_hc_rx_sock* %160, i32 0, i32 3
  %162 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @tfrc_rx_hist_add_packet(i32* %161, %struct.sk_buff* %162, i32 %163)
  br label %165

165:                                              ; preds = %159, %99
  %166 = load i32, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load %struct.sock*, %struct.sock** %3, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %171 = load i32, i32* %6, align 4
  %172 = call i32 @ccid3_hc_rx_send_feedback(%struct.sock* %169, %struct.sk_buff* %170, i32 %171)
  br label %173

173:                                              ; preds = %58, %106, %168, %165
  ret void
}

declare dso_local %struct.ccid3_hc_rx_sock* @ccid3_hc_rx_sk(%struct.sock*) #1

declare dso_local %struct.TYPE_5__* @dccp_sk(%struct.sock*) #1

declare dso_local i32 @dccp_data_packet(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_6__* @dccp_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ccid3_hc_rx_set_state(%struct.sock*, i32) #1

declare dso_local i64 @tfrc_rx_hist_duplicate(i32*, %struct.sk_buff*) #1

declare dso_local i8* @tfrc_ewma(i64, i64, i32) #1

declare dso_local i64 @tfrc_rx_handle_loss(i32*, i32*, %struct.sk_buff*, i32, i32, %struct.sock*) #1

declare dso_local i64 @tfrc_rx_hist_loss_pending(i32*) #1

declare dso_local i32 @tfrc_lh_is_initialised(i32*) #1

declare dso_local i64 @tfrc_rx_hist_sample_rtt(i32*, %struct.sk_buff*) #1

declare dso_local i64 @tfrc_lh_update_i_mean(i32*, %struct.sk_buff*) #1

declare dso_local i32 @SUB16(i32, i32) #1

declare dso_local i32 @tfrc_rx_hist_add_packet(i32*, %struct.sk_buff*, i32) #1

declare dso_local i32 @ccid3_hc_rx_send_feedback(%struct.sock*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
