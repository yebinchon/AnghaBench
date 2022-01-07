; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp_bpdu.c_br_stp_rcv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bridge/extr_br_stp_bpdu.c_br_stp_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stp_proto = type { i32 }
%struct.sk_buff = type { i8* }
%struct.net_device = type { i32 }
%struct.net_bridge_port = type { i64, %struct.net_bridge* }
%struct.net_bridge = type { i64, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.br_config_bpdu = type { i32, i32, i8, i8, i8*, i8*, i8*, i8*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i8* }

@BR_KERNEL_STP = common dso_local global i64 0, align 8
@IFF_UP = common dso_local global i32 0, align 4
@BR_STATE_DISABLED = common dso_local global i64 0, align 8
@BPDU_TYPE_CONFIG = common dso_local global i8 0, align 1
@BPDU_TYPE_TCN = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_stp_rcv(%struct.stp_proto* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.stp_proto*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_bridge_port*, align 8
  %9 = alloca %struct.net_bridge*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.br_config_bpdu, align 8
  store %struct.stp_proto* %0, %struct.stp_proto** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call %struct.TYPE_8__* @eth_hdr(%struct.sk_buff* %12)
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net_bridge_port* @rcu_dereference(i32 %18)
  store %struct.net_bridge_port* %19, %struct.net_bridge_port** %8, align 8
  %20 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %21 = icmp ne %struct.net_bridge_port* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %308

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i32 @pskb_may_pull(%struct.sk_buff* %24, i32 4)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %308

28:                                               ; preds = %23
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %28
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43, %37, %28
  br label %308

50:                                               ; preds = %43
  %51 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %52 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %51, i32 0, i32 1
  %53 = load %struct.net_bridge*, %struct.net_bridge** %52, align 8
  store %struct.net_bridge* %53, %struct.net_bridge** %9, align 8
  %54 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %55 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %54, i32 0, i32 1
  %56 = call i32 @spin_lock(i32* %55)
  %57 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %58 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BR_KERNEL_STP, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %304

63:                                               ; preds = %50
  %64 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %65 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %64, i32 0, i32 3
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IFF_UP, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %63
  br label %304

73:                                               ; preds = %63
  %74 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %75 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @BR_STATE_DISABLED, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %304

80:                                               ; preds = %73
  %81 = load i8*, i8** %7, align 8
  %82 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %83 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @compare_ether_addr(i8* %81, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %304

88:                                               ; preds = %80
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = call i8* @skb_pull(%struct.sk_buff* %89, i32 3)
  store i8* %90, i8** %10, align 8
  %91 = load i8*, i8** %10, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = load i8, i8* @BPDU_TYPE_CONFIG, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %291

98:                                               ; preds = %88
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = call i32 @pskb_may_pull(%struct.sk_buff* %99, i32 32)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  br label %304

103:                                              ; preds = %98
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** %10, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 1
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = and i32 %110, 1
  %112 = icmp ne i32 %111, 0
  %113 = zext i1 %112 to i64
  %114 = select i1 %112, i32 1, i32 0
  %115 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 0
  store i32 %114, i32* %115, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = and i32 %119, 128
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i32 1, i32 0
  %124 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 1
  store i32 %123, i32* %124, align 4
  %125 = load i8*, i8** %10, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 2
  %127 = load i8, i8* %126, align 1
  %128 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 9
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  store i8 %127, i8* %131, align 1
  %132 = load i8*, i8** %10, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 3
  %134 = load i8, i8* %133, align 1
  %135 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 9
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  store i8 %134, i8* %138, align 1
  %139 = load i8*, i8** %10, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 4
  %141 = load i8, i8* %140, align 1
  %142 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 9
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 0
  store i8 %141, i8* %145, align 1
  %146 = load i8*, i8** %10, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 5
  %148 = load i8, i8* %147, align 1
  %149 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 9
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  store i8 %148, i8* %152, align 1
  %153 = load i8*, i8** %10, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 6
  %155 = load i8, i8* %154, align 1
  %156 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 9
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 2
  store i8 %155, i8* %159, align 1
  %160 = load i8*, i8** %10, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 7
  %162 = load i8, i8* %161, align 1
  %163 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 9
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 3
  store i8 %162, i8* %166, align 1
  %167 = load i8*, i8** %10, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 8
  %169 = load i8, i8* %168, align 1
  %170 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 9
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 4
  store i8 %169, i8* %173, align 1
  %174 = load i8*, i8** %10, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 9
  %176 = load i8, i8* %175, align 1
  %177 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 9
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = load i8*, i8** %178, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 5
  store i8 %176, i8* %180, align 1
  %181 = load i8*, i8** %10, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 10
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = shl i32 %184, 24
  %186 = load i8*, i8** %10, align 8
  %187 = getelementptr inbounds i8, i8* %186, i64 11
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = shl i32 %189, 16
  %191 = or i32 %185, %190
  %192 = load i8*, i8** %10, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 12
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = shl i32 %195, 8
  %197 = or i32 %191, %196
  %198 = load i8*, i8** %10, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 13
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = or i32 %197, %201
  %203 = trunc i32 %202 to i8
  %204 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 2
  store i8 %203, i8* %204, align 8
  %205 = load i8*, i8** %10, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 14
  %207 = load i8, i8* %206, align 1
  %208 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 0
  store i8 %207, i8* %211, align 1
  %212 = load i8*, i8** %10, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 15
  %214 = load i8, i8* %213, align 1
  %215 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 1
  store i8 %214, i8* %218, align 1
  %219 = load i8*, i8** %10, align 8
  %220 = getelementptr inbounds i8, i8* %219, i64 16
  %221 = load i8, i8* %220, align 1
  %222 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 8
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  %224 = load i8*, i8** %223, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 0
  store i8 %221, i8* %225, align 1
  %226 = load i8*, i8** %10, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 17
  %228 = load i8, i8* %227, align 1
  %229 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 1
  %231 = load i8*, i8** %230, align 8
  %232 = getelementptr inbounds i8, i8* %231, i64 1
  store i8 %228, i8* %232, align 1
  %233 = load i8*, i8** %10, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 18
  %235 = load i8, i8* %234, align 1
  %236 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 1
  %238 = load i8*, i8** %237, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 2
  store i8 %235, i8* %239, align 1
  %240 = load i8*, i8** %10, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 19
  %242 = load i8, i8* %241, align 1
  %243 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 1
  %245 = load i8*, i8** %244, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 3
  store i8 %242, i8* %246, align 1
  %247 = load i8*, i8** %10, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 20
  %249 = load i8, i8* %248, align 1
  %250 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 1
  %252 = load i8*, i8** %251, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 4
  store i8 %249, i8* %253, align 1
  %254 = load i8*, i8** %10, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 21
  %256 = load i8, i8* %255, align 1
  %257 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 1
  %259 = load i8*, i8** %258, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 5
  store i8 %256, i8* %260, align 1
  %261 = load i8*, i8** %10, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 22
  %263 = load i8, i8* %262, align 1
  %264 = zext i8 %263 to i32
  %265 = shl i32 %264, 8
  %266 = load i8*, i8** %10, align 8
  %267 = getelementptr inbounds i8, i8* %266, i64 23
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = or i32 %265, %269
  %271 = trunc i32 %270 to i8
  %272 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 3
  store i8 %271, i8* %272, align 1
  %273 = load i8*, i8** %10, align 8
  %274 = getelementptr inbounds i8, i8* %273, i64 24
  %275 = call i8* @br_get_ticks(i8* %274)
  %276 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 7
  store i8* %275, i8** %276, align 8
  %277 = load i8*, i8** %10, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 26
  %279 = call i8* @br_get_ticks(i8* %278)
  %280 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 6
  store i8* %279, i8** %280, align 8
  %281 = load i8*, i8** %10, align 8
  %282 = getelementptr inbounds i8, i8* %281, i64 28
  %283 = call i8* @br_get_ticks(i8* %282)
  %284 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 5
  store i8* %283, i8** %284, align 8
  %285 = load i8*, i8** %10, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 30
  %287 = call i8* @br_get_ticks(i8* %286)
  %288 = getelementptr inbounds %struct.br_config_bpdu, %struct.br_config_bpdu* %11, i32 0, i32 4
  store i8* %287, i8** %288, align 8
  %289 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %290 = call i32 @br_received_config_bpdu(%struct.net_bridge_port* %289, %struct.br_config_bpdu* %11)
  br label %303

291:                                              ; preds = %88
  %292 = load i8*, i8** %10, align 8
  %293 = getelementptr inbounds i8, i8* %292, i64 0
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = load i8, i8* @BPDU_TYPE_TCN, align 1
  %297 = zext i8 %296 to i32
  %298 = icmp eq i32 %295, %297
  br i1 %298, label %299, label %302

299:                                              ; preds = %291
  %300 = load %struct.net_bridge_port*, %struct.net_bridge_port** %8, align 8
  %301 = call i32 @br_received_tcn_bpdu(%struct.net_bridge_port* %300)
  br label %302

302:                                              ; preds = %299, %291
  br label %303

303:                                              ; preds = %302, %103
  br label %304

304:                                              ; preds = %303, %102, %87, %79, %72, %62
  %305 = load %struct.net_bridge*, %struct.net_bridge** %9, align 8
  %306 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %305, i32 0, i32 1
  %307 = call i32 @spin_unlock(i32* %306)
  br label %308

308:                                              ; preds = %304, %49, %27, %22
  %309 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %310 = call i32 @kfree_skb(%struct.sk_buff* %309)
  ret void
}

declare dso_local %struct.TYPE_8__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local %struct.net_bridge_port* @rcu_dereference(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @compare_ether_addr(i8*, i32) #1

declare dso_local i8* @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i8* @br_get_ticks(i8*) #1

declare dso_local i32 @br_received_config_bpdu(%struct.net_bridge_port*, %struct.br_config_bpdu*) #1

declare dso_local i32 @br_received_tcn_bpdu(%struct.net_bridge_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
