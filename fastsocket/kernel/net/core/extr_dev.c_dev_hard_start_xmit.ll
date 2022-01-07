; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_dev_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_dev_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32, %struct.sk_buff*, i64, i64 }
%struct.net_device = type { i32, %struct.net_device_ops* }
%struct.net_device_ops = type { i32 (%struct.sk_buff*, %struct.net_device.0*)* }
%struct.net_device.0 = type opaque
%struct.netdev_queue = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NETIF_F_HW_VLAN_TX = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@NETIF_F_ALL_CSUM = common dso_local global i32 0, align 4
@IFF_XMIT_DST_RELEASE = common dso_local global i32 0, align 4
@ptype_all = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1, %struct.netdev_queue* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netdev_queue*, align 8
  %8 = alloca %struct.net_device_ops*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.netdev_queue* %2, %struct.netdev_queue** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load %struct.net_device_ops*, %struct.net_device_ops** %14, align 8
  store %struct.net_device_ops* %15, %struct.net_device_ops** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @likely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %157

24:                                               ; preds = %3
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @netif_skb_features(%struct.sk_buff* %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %28 = call i64 @vlan_tx_tag_present(%struct.sk_buff* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %24
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @NETIF_F_HW_VLAN_TX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %30
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call i32 @vlan_tx_tag_get(%struct.sk_buff* %37)
  %39 = call %struct.sk_buff* @__vlan_put_tag(%struct.sk_buff* %36, i32 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %5, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %242

47:                                               ; preds = %35
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 5
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %30, %24
  %51 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* @NETIF_F_SG, align 4
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %55, %50
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i64 @netif_needs_gso(%struct.sk_buff* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @dev_gso_segment(%struct.sk_buff* %65, i32 %66)
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %239

71:                                               ; preds = %64
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 3
  %74 = load %struct.sk_buff*, %struct.sk_buff** %73, align 8
  %75 = icmp ne %struct.sk_buff* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %158

77:                                               ; preds = %71
  br label %116

78:                                               ; preds = %59
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @skb_needs_linearize(%struct.sk_buff* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = call i64 @__skb_linearize(%struct.sk_buff* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %239

88:                                               ; preds = %83, %78
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %115

94:                                               ; preds = %88
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = call i32 @skb_checksum_start_offset(%struct.sk_buff* %101)
  %103 = call i32 @skb_set_transport_header(%struct.sk_buff* %100, i32 %102)
  br label %104

104:                                              ; preds = %99, %94
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* @NETIF_F_ALL_CSUM, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = call i64 @skb_checksum_help(%struct.sk_buff* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %239

114:                                              ; preds = %109, %104
  br label %115

115:                                              ; preds = %114, %88
  br label %116

116:                                              ; preds = %115, %77
  %117 = load %struct.net_device*, %struct.net_device** %6, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @IFF_XMIT_DST_RELEASE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %125 = call i32 @skb_dst_drop(%struct.sk_buff* %124)
  br label %126

126:                                              ; preds = %123, %116
  %127 = call i32 @list_empty(i32* @ptype_all)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %126
  %130 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %131 = load %struct.net_device*, %struct.net_device** %6, align 8
  %132 = call i32 @dev_queue_xmit_nit(%struct.sk_buff* %130, %struct.net_device* %131)
  br label %133

133:                                              ; preds = %129, %126
  %134 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %135 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %10, align 4
  %137 = load %struct.net_device_ops*, %struct.net_device_ops** %8, align 8
  %138 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %137, i32 0, i32 0
  %139 = load i32 (%struct.sk_buff*, %struct.net_device.0*)*, i32 (%struct.sk_buff*, %struct.net_device.0*)** %138, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %141 = load %struct.net_device*, %struct.net_device** %6, align 8
  %142 = bitcast %struct.net_device* %141 to %struct.net_device.0*
  %143 = call i32 %139(%struct.sk_buff* %140, %struct.net_device.0* %142)
  store i32 %143, i32* %9, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.net_device*, %struct.net_device** %6, align 8
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @trace_net_dev_xmit(%struct.sk_buff* %144, i32 %145, %struct.net_device* %146, i32 %147)
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @NETDEV_TX_OK, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %133
  %153 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %154 = call i32 @txq_trans_update(%struct.netdev_queue* %153)
  br label %155

155:                                              ; preds = %152, %133
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %4, align 4
  br label %244

157:                                              ; preds = %3
  br label %158

158:                                              ; preds = %157, %76
  br label %159

159:                                              ; preds = %227, %158
  %160 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 3
  %162 = load %struct.sk_buff*, %struct.sk_buff** %161, align 8
  store %struct.sk_buff* %162, %struct.sk_buff** %12, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %164 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %163, i32 0, i32 3
  %165 = load %struct.sk_buff*, %struct.sk_buff** %164, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 3
  store %struct.sk_buff* %165, %struct.sk_buff** %167, align 8
  %168 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %169 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %168, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %169, align 8
  %170 = call i32 @list_empty(i32* @ptype_all)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %159
  %173 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %174 = load %struct.net_device*, %struct.net_device** %6, align 8
  %175 = call i32 @dev_queue_xmit_nit(%struct.sk_buff* %173, %struct.net_device* %174)
  br label %176

176:                                              ; preds = %172, %159
  %177 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %178 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  store i32 %179, i32* %10, align 4
  %180 = load %struct.net_device_ops*, %struct.net_device_ops** %8, align 8
  %181 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %180, i32 0, i32 0
  %182 = load i32 (%struct.sk_buff*, %struct.net_device.0*)*, i32 (%struct.sk_buff*, %struct.net_device.0*)** %181, align 8
  %183 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %184 = load %struct.net_device*, %struct.net_device** %6, align 8
  %185 = bitcast %struct.net_device* %184 to %struct.net_device.0*
  %186 = call i32 %182(%struct.sk_buff* %183, %struct.net_device.0* %185)
  store i32 %186, i32* %9, align 4
  %187 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.net_device*, %struct.net_device** %6, align 8
  %190 = load i32, i32* %10, align 4
  %191 = call i32 @trace_net_dev_xmit(%struct.sk_buff* %187, i32 %188, %struct.net_device* %189, i32 %190)
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* @NETDEV_TX_OK, align 4
  %194 = icmp ne i32 %192, %193
  %195 = zext i1 %194 to i32
  %196 = call i64 @unlikely(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %176
  %199 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %200 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %199, i32 0, i32 3
  %201 = load %struct.sk_buff*, %struct.sk_buff** %200, align 8
  %202 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %203 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %202, i32 0, i32 3
  store %struct.sk_buff* %201, %struct.sk_buff** %203, align 8
  %204 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %205 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %206 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %205, i32 0, i32 3
  store %struct.sk_buff* %204, %struct.sk_buff** %206, align 8
  %207 = load i32, i32* %9, align 4
  store i32 %207, i32* %4, align 4
  br label %244

208:                                              ; preds = %176
  %209 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %210 = call i32 @txq_trans_update(%struct.netdev_queue* %209)
  %211 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %212 = call i64 @netif_tx_queue_stopped(%struct.netdev_queue* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %208
  %215 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %216 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %215, i32 0, i32 3
  %217 = load %struct.sk_buff*, %struct.sk_buff** %216, align 8
  %218 = icmp ne %struct.sk_buff* %217, null
  br label %219

219:                                              ; preds = %214, %208
  %220 = phi i1 [ false, %208 ], [ %218, %214 ]
  %221 = zext i1 %220 to i32
  %222 = call i64 @unlikely(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %219
  %225 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %225, i32* %4, align 4
  br label %244

226:                                              ; preds = %219
  br label %227

227:                                              ; preds = %226
  %228 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %229 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %228, i32 0, i32 3
  %230 = load %struct.sk_buff*, %struct.sk_buff** %229, align 8
  %231 = icmp ne %struct.sk_buff* %230, null
  br i1 %231, label %159, label %232

232:                                              ; preds = %227
  %233 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %234 = call %struct.TYPE_2__* @DEV_GSO_CB(%struct.sk_buff* %233)
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %238 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 4
  br label %239

239:                                              ; preds = %232, %113, %87, %70
  %240 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %241 = call i32 @kfree_skb(%struct.sk_buff* %240)
  br label %242

242:                                              ; preds = %239, %46
  %243 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %243, i32* %4, align 4
  br label %244

244:                                              ; preds = %242, %224, %198, %155
  %245 = load i32, i32* %4, align 4
  ret i32 %245
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @netif_skb_features(%struct.sk_buff*) #1

declare dso_local i64 @vlan_tx_tag_present(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @__vlan_put_tag(%struct.sk_buff*, i32) #1

declare dso_local i32 @vlan_tx_tag_get(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_needs_gso(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_gso_segment(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_needs_linearize(%struct.sk_buff*, i32) #1

declare dso_local i64 @__skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @skb_set_transport_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_checksum_start_offset(%struct.sk_buff*) #1

declare dso_local i64 @skb_checksum_help(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_drop(%struct.sk_buff*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dev_queue_xmit_nit(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @trace_net_dev_xmit(%struct.sk_buff*, i32, %struct.net_device*, i32) #1

declare dso_local i32 @txq_trans_update(%struct.netdev_queue*) #1

declare dso_local i64 @netif_tx_queue_stopped(%struct.netdev_queue*) #1

declare dso_local %struct.TYPE_2__* @DEV_GSO_CB(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
