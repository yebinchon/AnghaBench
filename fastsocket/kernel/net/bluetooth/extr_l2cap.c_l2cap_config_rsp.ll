; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_config_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_config_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.l2cap_cmd_hdr = type { i32 }
%struct.l2cap_conf_rsp = type { i32, i32, i32, i32 }
%struct.sock = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"scid 0x%4.4x flags 0x%2.2x result 0x%2.2x\00", align 1
@L2CAP_CONF_MAX_CONF_RSP = common dso_local global i32 0, align 4
@L2CAP_CONF_REQ = common dso_local global i32 0, align 4
@BT_DISCONN = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@L2CAP_CONF_INPUT_DONE = common dso_local global i32 0, align 4
@L2CAP_CONF_OUTPUT_DONE = common dso_local global i32 0, align 4
@L2CAP_CONF_NO_FCS_RECV = common dso_local global i32 0, align 4
@L2CAP_FCS_NONE = common dso_local global i64 0, align 8
@L2CAP_FCS_CRC16 = common dso_local global i64 0, align 8
@BT_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, %struct.l2cap_cmd_hdr*, i32*)* @l2cap_config_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_config_rsp(%struct.l2cap_conn* %0, %struct.l2cap_cmd_hdr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.l2cap_conn*, align 8
  %6 = alloca %struct.l2cap_cmd_hdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.l2cap_conf_rsp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sock*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [64 x i8], align 16
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %5, align 8
  store %struct.l2cap_cmd_hdr* %1, %struct.l2cap_cmd_hdr** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = bitcast i32* %15 to %struct.l2cap_conf_rsp*
  store %struct.l2cap_conf_rsp* %16, %struct.l2cap_conf_rsp** %8, align 8
  %17 = load %struct.l2cap_conf_rsp*, %struct.l2cap_conf_rsp** %8, align 8
  %18 = getelementptr inbounds %struct.l2cap_conf_rsp, %struct.l2cap_conf_rsp* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @__le16_to_cpu(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.l2cap_conf_rsp*, %struct.l2cap_conf_rsp** %8, align 8
  %22 = getelementptr inbounds %struct.l2cap_conf_rsp, %struct.l2cap_conf_rsp* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__le16_to_cpu(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.l2cap_conf_rsp*, %struct.l2cap_conf_rsp** %8, align 8
  %26 = getelementptr inbounds %struct.l2cap_conf_rsp, %struct.l2cap_conf_rsp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @__le16_to_cpu(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @BT_DBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %34 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %33, i32 0, i32 0
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.sock* @l2cap_get_chan_by_scid(i32* %34, i32 %35)
  store %struct.sock* %36, %struct.sock** %12, align 8
  %37 = load %struct.sock*, %struct.sock** %12, align 8
  %38 = icmp ne %struct.sock* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %174

40:                                               ; preds = %3
  %41 = load i32, i32* %11, align 4
  switch i32 %41, label %96 [
    i32 129, label %42
    i32 128, label %43
  ]

42:                                               ; preds = %40
  br label %110

43:                                               ; preds = %40
  %44 = load %struct.sock*, %struct.sock** %12, align 8
  %45 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @L2CAP_CONF_MAX_CONF_RSP, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %95

50:                                               ; preds = %43
  %51 = load %struct.l2cap_cmd_hdr*, %struct.l2cap_cmd_hdr** %6, align 8
  %52 = getelementptr inbounds %struct.l2cap_cmd_hdr, %struct.l2cap_cmd_hdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = sub i64 %54, 16
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ugt i64 %58, 60
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %62 = load %struct.sock*, %struct.sock** %12, align 8
  %63 = call i32 @l2cap_send_disconn_req(%struct.l2cap_conn* %61, %struct.sock* %62)
  br label %171

64:                                               ; preds = %50
  store i32 129, i32* %11, align 4
  %65 = load %struct.sock*, %struct.sock** %12, align 8
  %66 = load %struct.l2cap_conf_rsp*, %struct.l2cap_conf_rsp** %8, align 8
  %67 = getelementptr inbounds %struct.l2cap_conf_rsp, %struct.l2cap_conf_rsp* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %13, align 4
  %70 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %71 = call i32 @l2cap_parse_conf_rsp(%struct.sock* %65, i32 %68, i32 %69, i8* %70, i32* %11)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %64
  %75 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %76 = load %struct.sock*, %struct.sock** %12, align 8
  %77 = call i32 @l2cap_send_disconn_req(%struct.l2cap_conn* %75, %struct.sock* %76)
  br label %171

78:                                               ; preds = %64
  %79 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %80 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %81 = call i32 @l2cap_get_ident(%struct.l2cap_conn* %80)
  %82 = load i32, i32* @L2CAP_CONF_REQ, align 4
  %83 = load i32, i32* %13, align 4
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %85 = call i32 @l2cap_send_cmd(%struct.l2cap_conn* %79, i32 %81, i32 %82, i32 %83, i8* %84)
  %86 = load %struct.sock*, %struct.sock** %12, align 8
  %87 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %86)
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 129
  br i1 %92, label %93, label %94

93:                                               ; preds = %78
  br label %171

94:                                               ; preds = %78
  br label %110

95:                                               ; preds = %43
  br label %96

96:                                               ; preds = %40, %95
  %97 = load i32, i32* @BT_DISCONN, align 4
  %98 = load %struct.sock*, %struct.sock** %12, align 8
  %99 = getelementptr inbounds %struct.sock, %struct.sock* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @ECONNRESET, align 4
  %101 = load %struct.sock*, %struct.sock** %12, align 8
  %102 = getelementptr inbounds %struct.sock, %struct.sock* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.sock*, %struct.sock** %12, align 8
  %104 = load i32, i32* @HZ, align 4
  %105 = mul nsw i32 %104, 5
  %106 = call i32 @l2cap_sock_set_timer(%struct.sock* %103, i32 %105)
  %107 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %108 = load %struct.sock*, %struct.sock** %12, align 8
  %109 = call i32 @l2cap_send_disconn_req(%struct.l2cap_conn* %107, %struct.sock* %108)
  br label %171

110:                                              ; preds = %94, %42
  %111 = load i32, i32* %10, align 4
  %112 = and i32 %111, 1
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %171

115:                                              ; preds = %110
  %116 = load i32, i32* @L2CAP_CONF_INPUT_DONE, align 4
  %117 = load %struct.sock*, %struct.sock** %12, align 8
  %118 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %117)
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %116
  store i32 %121, i32* %119, align 8
  %122 = load %struct.sock*, %struct.sock** %12, align 8
  %123 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %122)
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @L2CAP_CONF_OUTPUT_DONE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %170

129:                                              ; preds = %115
  %130 = load %struct.sock*, %struct.sock** %12, align 8
  %131 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %130)
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @L2CAP_CONF_NO_FCS_RECV, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %129
  %138 = load %struct.sock*, %struct.sock** %12, align 8
  %139 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %138)
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @L2CAP_FCS_NONE, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %137, %129
  %145 = load i64, i64* @L2CAP_FCS_CRC16, align 8
  %146 = load %struct.sock*, %struct.sock** %12, align 8
  %147 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %146)
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  store i64 %145, i64* %148, align 8
  br label %149

149:                                              ; preds = %144, %137
  %150 = load i32, i32* @BT_CONNECTED, align 4
  %151 = load %struct.sock*, %struct.sock** %12, align 8
  %152 = getelementptr inbounds %struct.sock, %struct.sock* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 4
  %153 = load %struct.sock*, %struct.sock** %12, align 8
  %154 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %153)
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 4
  store i64 0, i64* %155, align 8
  %156 = load %struct.sock*, %struct.sock** %12, align 8
  %157 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %156)
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 3
  store i64 0, i64* %158, align 8
  %159 = load %struct.sock*, %struct.sock** %12, align 8
  %160 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %159)
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 2
  store i64 0, i64* %161, align 8
  %162 = load %struct.sock*, %struct.sock** %12, align 8
  %163 = call i32 @TX_QUEUE(%struct.sock* %162)
  %164 = call i32 @__skb_queue_head_init(i32 %163)
  %165 = load %struct.sock*, %struct.sock** %12, align 8
  %166 = call i32 @SREJ_QUEUE(%struct.sock* %165)
  %167 = call i32 @__skb_queue_head_init(i32 %166)
  %168 = load %struct.sock*, %struct.sock** %12, align 8
  %169 = call i32 @l2cap_chan_ready(%struct.sock* %168)
  br label %170

170:                                              ; preds = %149, %115
  br label %171

171:                                              ; preds = %170, %114, %96, %93, %74, %60
  %172 = load %struct.sock*, %struct.sock** %12, align 8
  %173 = call i32 @bh_unlock_sock(%struct.sock* %172)
  store i32 0, i32* %4, align 4
  br label %174

174:                                              ; preds = %171, %39
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local i32 @BT_DBG(i8*, i32, i32, i32) #1

declare dso_local %struct.sock* @l2cap_get_chan_by_scid(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @l2cap_send_disconn_req(%struct.l2cap_conn*, %struct.sock*) #1

declare dso_local i32 @l2cap_parse_conf_rsp(%struct.sock*, i32, i32, i8*, i32*) #1

declare dso_local i32 @l2cap_send_cmd(%struct.l2cap_conn*, i32, i32, i32, i8*) #1

declare dso_local i32 @l2cap_get_ident(%struct.l2cap_conn*) #1

declare dso_local i32 @l2cap_sock_set_timer(%struct.sock*, i32) #1

declare dso_local i32 @__skb_queue_head_init(i32) #1

declare dso_local i32 @TX_QUEUE(%struct.sock*) #1

declare dso_local i32 @SREJ_QUEUE(%struct.sock*) #1

declare dso_local i32 @l2cap_chan_ready(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
