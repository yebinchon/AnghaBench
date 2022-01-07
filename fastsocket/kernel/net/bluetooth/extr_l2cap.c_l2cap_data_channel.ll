; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_data_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_data_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.sock = type { i64 }
%struct.l2cap_pinfo = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"unknown cid 0x%4.4x\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"sk %p, len %d\00", align 1
@BT_CONNECTED = common dso_local global i64 0, align 8
@L2CAP_FCS_CRC16 = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_MAX_PDU_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"sk %p: bad mode 0x%2.2x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2cap_conn*, i32, %struct.sk_buff*)* @l2cap_data_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_data_channel(%struct.l2cap_conn* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.l2cap_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.l2cap_pinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %13 = load %struct.l2cap_conn*, %struct.l2cap_conn** %4, align 8
  %14 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %13, i32 0, i32 0
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.sock* @l2cap_get_chan_by_scid(i32* %14, i32 %15)
  store %struct.sock* %16, %struct.sock** %7, align 8
  %17 = load %struct.sock*, %struct.sock** %7, align 8
  %18 = icmp ne %struct.sock* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %185

22:                                               ; preds = %3
  %23 = load %struct.sock*, %struct.sock** %7, align 8
  %24 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %23)
  store %struct.l2cap_pinfo* %24, %struct.l2cap_pinfo** %8, align 8
  %25 = load %struct.sock*, %struct.sock** %7, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.sock* %25, i32 %28)
  %30 = load %struct.sock*, %struct.sock** %7, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @BT_CONNECTED, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %185

36:                                               ; preds = %22
  %37 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %38 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %177 [
    i32 130, label %40
    i32 129, label %56
    i32 128, label %111
  ]

40:                                               ; preds = %36
  %41 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %42 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %185

49:                                               ; preds = %40
  %50 = load %struct.sock*, %struct.sock** %7, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = call i32 @sock_queue_rcv_skb(%struct.sock* %50, %struct.sk_buff* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %188

55:                                               ; preds = %49
  br label %184

56:                                               ; preds = %36
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @get_unaligned_le16(i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = call i32 @skb_pull(%struct.sk_buff* %61, i32 2)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @__is_sar_start(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %56
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %70, 2
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %69, %56
  %73 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %74 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @L2CAP_FCS_CRC16, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %79, 2
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %78, %72
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @L2CAP_DEFAULT_MAX_PDU_SIZE, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %185

86:                                               ; preds = %81
  %87 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %89 = call i32 @l2cap_check_fcs(%struct.l2cap_pinfo* %87, %struct.sk_buff* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %185

92:                                               ; preds = %86
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @__is_iframe(i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load %struct.sock*, %struct.sock** %7, align 8
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = call i32 @l2cap_data_channel_iframe(%struct.sock* %97, i32 %98, %struct.sk_buff* %99)
  store i32 %100, i32* %12, align 4
  br label %106

101:                                              ; preds = %92
  %102 = load %struct.sock*, %struct.sock** %7, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = call i32 @l2cap_data_channel_sframe(%struct.sock* %102, i32 %103, %struct.sk_buff* %104)
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %101, %96
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  br label %188

110:                                              ; preds = %106
  br label %184

111:                                              ; preds = %36
  %112 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @get_unaligned_le16(i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %117 = call i32 @skb_pull(%struct.sk_buff* %116, i32 2)
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @__is_sar_start(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %111
  %125 = load i32, i32* %10, align 4
  %126 = sub nsw i32 %125, 2
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %124, %111
  %128 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %129 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @L2CAP_FCS_CRC16, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load i32, i32* %10, align 4
  %135 = sub nsw i32 %134, 2
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %133, %127
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* @L2CAP_DEFAULT_MAX_PDU_SIZE, align 4
  %139 = icmp sgt i32 %137, %138
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @__is_sframe(i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140, %136
  br label %185

145:                                              ; preds = %140
  %146 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %148 = call i32 @l2cap_check_fcs(%struct.l2cap_pinfo* %146, %struct.sk_buff* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %185

151:                                              ; preds = %145
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @__get_txseq(i32 %152)
  store i32 %153, i32* %11, align 4
  %154 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %155 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %151
  %160 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %161 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  %164 = srem i32 %163, 64
  %165 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %166 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 4
  br label %172

167:                                              ; preds = %151
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  %170 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %8, align 8
  %171 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 4
  br label %172

172:                                              ; preds = %167, %159
  %173 = load %struct.sock*, %struct.sock** %7, align 8
  %174 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @l2cap_sar_reassembly_sdu(%struct.sock* %173, %struct.sk_buff* %174, i32 %175)
  store i32 %176, i32* %12, align 4
  br label %188

177:                                              ; preds = %36
  %178 = load %struct.sock*, %struct.sock** %7, align 8
  %179 = load %struct.sock*, %struct.sock** %7, align 8
  %180 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %179)
  %181 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), %struct.sock* %178, i32 %182)
  br label %184

184:                                              ; preds = %177, %110, %55
  br label %185

185:                                              ; preds = %184, %150, %144, %91, %85, %48, %35, %19
  %186 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %187 = call i32 @kfree_skb(%struct.sk_buff* %186)
  br label %188

188:                                              ; preds = %185, %172, %109, %54
  %189 = load %struct.sock*, %struct.sock** %7, align 8
  %190 = icmp ne %struct.sock* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load %struct.sock*, %struct.sock** %7, align 8
  %193 = call i32 @bh_unlock_sock(%struct.sock* %192)
  br label %194

194:                                              ; preds = %191, %188
  ret i32 0
}

declare dso_local %struct.sock* @l2cap_get_chan_by_scid(i32*, i32) #1

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local %struct.l2cap_pinfo* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @sock_queue_rcv_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @get_unaligned_le16(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @__is_sar_start(i32) #1

declare dso_local i32 @l2cap_check_fcs(%struct.l2cap_pinfo*, %struct.sk_buff*) #1

declare dso_local i32 @__is_iframe(i32) #1

declare dso_local i32 @l2cap_data_channel_iframe(%struct.sock*, i32, %struct.sk_buff*) #1

declare dso_local i32 @l2cap_data_channel_sframe(%struct.sock*, i32, %struct.sk_buff*) #1

declare dso_local i32 @__is_sframe(i32) #1

declare dso_local i32 @__get_txseq(i32) #1

declare dso_local i32 @l2cap_sar_reassembly_sdu(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
