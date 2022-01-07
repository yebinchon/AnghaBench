; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_vlan_device_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/8021q/extr_vlan.c_vlan_device_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.net_device*, i32)* }
%struct.vlan_group = type { i32 }

@NETIF_F_HW_VLAN_FILTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"8021q: adding VLAN 0 to HW filter on device %s\0A\00", align 1
@VLAN_GROUP_ARRAY_LEN = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@NETREG_UNREGISTERING = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @vlan_device_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_device_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.vlan_group*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.net_device*
  store %struct.net_device* %13, %struct.net_device** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = call i64 @is_vlan_dev(%struct.net_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @__vlan_device_event(%struct.net_device* %18, i64 %19)
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %22, 128
  br i1 %23, label %24, label %50

24:                                               ; preds = %21
  %25 = load %struct.net_device*, %struct.net_device** %7, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NETIF_F_HW_VLAN_FILTER, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %24
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.net_device*, i32)* %36, null
  br i1 %37, label %38, label %50

38:                                               ; preds = %31
  %39 = load %struct.net_device*, %struct.net_device** %7, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.net_device*, %struct.net_device** %7, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %46, align 8
  %48 = load %struct.net_device*, %struct.net_device** %7, align 8
  %49 = call i32 %47(%struct.net_device* %48, i32 0)
  br label %50

50:                                               ; preds = %38, %31, %24, %21
  %51 = load %struct.net_device*, %struct.net_device** %7, align 8
  %52 = call %struct.vlan_group* @__vlan_find_group(%struct.net_device* %51)
  store %struct.vlan_group* %52, %struct.vlan_group** %8, align 8
  %53 = load %struct.vlan_group*, %struct.vlan_group** %8, align 8
  %54 = icmp ne %struct.vlan_group* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %303

56:                                               ; preds = %50
  %57 = load i64, i64* %5, align 8
  switch i64 %57, label %302 [
    i64 134, label %58
    i64 133, label %84
    i64 132, label %119
    i64 130, label %156
    i64 131, label %182
    i64 128, label %223
    i64 129, label %263
  ]

58:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %80, %58
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @VLAN_GROUP_ARRAY_LEN, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %83

63:                                               ; preds = %59
  %64 = load %struct.net_device*, %struct.net_device** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @ignore_slave_event(%struct.net_device* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  br label %80

69:                                               ; preds = %63
  %70 = load %struct.vlan_group*, %struct.vlan_group** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call %struct.net_device* @vlan_group_get_device(%struct.vlan_group* %70, i32 %71)
  store %struct.net_device* %72, %struct.net_device** %11, align 8
  %73 = load %struct.net_device*, %struct.net_device** %11, align 8
  %74 = icmp ne %struct.net_device* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  br label %80

76:                                               ; preds = %69
  %77 = load %struct.net_device*, %struct.net_device** %7, align 8
  %78 = load %struct.net_device*, %struct.net_device** %11, align 8
  %79 = call i32 @netif_stacked_transfer_operstate(%struct.net_device* %77, %struct.net_device* %78)
  br label %80

80:                                               ; preds = %76, %75, %68
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %59

83:                                               ; preds = %59
  br label %302

84:                                               ; preds = %56
  store i32 0, i32* %9, align 4
  br label %85

85:                                               ; preds = %115, %84
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @VLAN_GROUP_ARRAY_LEN, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %118

89:                                               ; preds = %85
  %90 = load %struct.net_device*, %struct.net_device** %7, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @ignore_slave_event(%struct.net_device* %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %115

95:                                               ; preds = %89
  %96 = load %struct.vlan_group*, %struct.vlan_group** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call %struct.net_device* @vlan_group_get_device(%struct.vlan_group* %96, i32 %97)
  store %struct.net_device* %98, %struct.net_device** %11, align 8
  %99 = load %struct.net_device*, %struct.net_device** %11, align 8
  %100 = icmp ne %struct.net_device* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %95
  br label %115

102:                                              ; preds = %95
  %103 = load %struct.net_device*, %struct.net_device** %11, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @IFF_UP, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  br label %115

111:                                              ; preds = %102
  %112 = load %struct.net_device*, %struct.net_device** %7, align 8
  %113 = load %struct.net_device*, %struct.net_device** %11, align 8
  %114 = call i32 @vlan_sync_address(%struct.net_device* %112, %struct.net_device* %113)
  br label %115

115:                                              ; preds = %111, %110, %101, %94
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %85

118:                                              ; preds = %85
  br label %302

119:                                              ; preds = %56
  store i32 0, i32* %9, align 4
  br label %120

120:                                              ; preds = %152, %119
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @VLAN_GROUP_ARRAY_LEN, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %155

124:                                              ; preds = %120
  %125 = load %struct.net_device*, %struct.net_device** %7, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @ignore_slave_event(%struct.net_device* %125, i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %152

130:                                              ; preds = %124
  %131 = load %struct.vlan_group*, %struct.vlan_group** %8, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call %struct.net_device* @vlan_group_get_device(%struct.vlan_group* %131, i32 %132)
  store %struct.net_device* %133, %struct.net_device** %11, align 8
  %134 = load %struct.net_device*, %struct.net_device** %11, align 8
  %135 = icmp ne %struct.net_device* %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %130
  br label %152

137:                                              ; preds = %130
  %138 = load %struct.net_device*, %struct.net_device** %11, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.net_device*, %struct.net_device** %7, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = icmp sle i32 %140, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  br label %152

146:                                              ; preds = %137
  %147 = load %struct.net_device*, %struct.net_device** %11, align 8
  %148 = load %struct.net_device*, %struct.net_device** %7, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @dev_set_mtu(%struct.net_device* %147, i32 %150)
  br label %152

152:                                              ; preds = %146, %145, %136, %129
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %120

155:                                              ; preds = %120
  br label %302

156:                                              ; preds = %56
  store i32 0, i32* %9, align 4
  br label %157

157:                                              ; preds = %178, %156
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* @VLAN_GROUP_ARRAY_LEN, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %181

161:                                              ; preds = %157
  %162 = load %struct.net_device*, %struct.net_device** %7, align 8
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @ignore_slave_event(%struct.net_device* %162, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %178

167:                                              ; preds = %161
  %168 = load %struct.vlan_group*, %struct.vlan_group** %8, align 8
  %169 = load i32, i32* %9, align 4
  %170 = call %struct.net_device* @vlan_group_get_device(%struct.vlan_group* %168, i32 %169)
  store %struct.net_device* %170, %struct.net_device** %11, align 8
  %171 = load %struct.net_device*, %struct.net_device** %11, align 8
  %172 = icmp ne %struct.net_device* %171, null
  br i1 %172, label %174, label %173

173:                                              ; preds = %167
  br label %178

174:                                              ; preds = %167
  %175 = load %struct.net_device*, %struct.net_device** %7, align 8
  %176 = load %struct.net_device*, %struct.net_device** %11, align 8
  %177 = call i32 @vlan_transfer_features(%struct.net_device* %175, %struct.net_device* %176)
  br label %178

178:                                              ; preds = %174, %173, %166
  %179 = load i32, i32* %9, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %9, align 4
  br label %157

181:                                              ; preds = %157
  br label %302

182:                                              ; preds = %56
  store i32 0, i32* %9, align 4
  br label %183

183:                                              ; preds = %219, %182
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* @VLAN_GROUP_ARRAY_LEN, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %222

187:                                              ; preds = %183
  %188 = load %struct.net_device*, %struct.net_device** %7, align 8
  %189 = load i32, i32* %9, align 4
  %190 = call i32 @ignore_slave_event(%struct.net_device* %188, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  br label %219

193:                                              ; preds = %187
  %194 = load %struct.vlan_group*, %struct.vlan_group** %8, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call %struct.net_device* @vlan_group_get_device(%struct.vlan_group* %194, i32 %195)
  store %struct.net_device* %196, %struct.net_device** %11, align 8
  %197 = load %struct.net_device*, %struct.net_device** %11, align 8
  %198 = icmp ne %struct.net_device* %197, null
  br i1 %198, label %200, label %199

199:                                              ; preds = %193
  br label %219

200:                                              ; preds = %193
  %201 = load %struct.net_device*, %struct.net_device** %11, align 8
  %202 = getelementptr inbounds %struct.net_device, %struct.net_device* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %10, align 4
  %204 = load i32, i32* %10, align 4
  %205 = load i32, i32* @IFF_UP, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %200
  br label %219

209:                                              ; preds = %200
  %210 = load %struct.net_device*, %struct.net_device** %11, align 8
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* @IFF_UP, align 4
  %213 = xor i32 %212, -1
  %214 = and i32 %211, %213
  %215 = call i32 @dev_change_flags(%struct.net_device* %210, i32 %214)
  %216 = load %struct.net_device*, %struct.net_device** %7, align 8
  %217 = load %struct.net_device*, %struct.net_device** %11, align 8
  %218 = call i32 @netif_stacked_transfer_operstate(%struct.net_device* %216, %struct.net_device* %217)
  br label %219

219:                                              ; preds = %209, %208, %199, %192
  %220 = load i32, i32* %9, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %9, align 4
  br label %183

222:                                              ; preds = %183
  br label %302

223:                                              ; preds = %56
  store i32 0, i32* %9, align 4
  br label %224

224:                                              ; preds = %259, %223
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* @VLAN_GROUP_ARRAY_LEN, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %262

228:                                              ; preds = %224
  %229 = load %struct.net_device*, %struct.net_device** %7, align 8
  %230 = load i32, i32* %9, align 4
  %231 = call i32 @ignore_slave_event(%struct.net_device* %229, i32 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  br label %259

234:                                              ; preds = %228
  %235 = load %struct.vlan_group*, %struct.vlan_group** %8, align 8
  %236 = load i32, i32* %9, align 4
  %237 = call %struct.net_device* @vlan_group_get_device(%struct.vlan_group* %235, i32 %236)
  store %struct.net_device* %237, %struct.net_device** %11, align 8
  %238 = load %struct.net_device*, %struct.net_device** %11, align 8
  %239 = icmp ne %struct.net_device* %238, null
  br i1 %239, label %241, label %240

240:                                              ; preds = %234
  br label %259

241:                                              ; preds = %234
  %242 = load %struct.net_device*, %struct.net_device** %11, align 8
  %243 = getelementptr inbounds %struct.net_device, %struct.net_device* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %10, align 4
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* @IFF_UP, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %241
  br label %259

250:                                              ; preds = %241
  %251 = load %struct.net_device*, %struct.net_device** %11, align 8
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* @IFF_UP, align 4
  %254 = or i32 %252, %253
  %255 = call i32 @dev_change_flags(%struct.net_device* %251, i32 %254)
  %256 = load %struct.net_device*, %struct.net_device** %7, align 8
  %257 = load %struct.net_device*, %struct.net_device** %11, align 8
  %258 = call i32 @netif_stacked_transfer_operstate(%struct.net_device* %256, %struct.net_device* %257)
  br label %259

259:                                              ; preds = %250, %249, %240, %233
  %260 = load i32, i32* %9, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %9, align 4
  br label %224

262:                                              ; preds = %224
  br label %302

263:                                              ; preds = %56
  %264 = load %struct.net_device*, %struct.net_device** %7, align 8
  %265 = getelementptr inbounds %struct.net_device, %struct.net_device* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @NETREG_UNREGISTERING, align 4
  %268 = icmp ne i32 %266, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %263
  br label %302

270:                                              ; preds = %263
  store i32 0, i32* %9, align 4
  br label %271

271:                                              ; preds = %298, %270
  %272 = load i32, i32* %9, align 4
  %273 = load i32, i32* @VLAN_GROUP_ARRAY_LEN, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %301

275:                                              ; preds = %271
  %276 = load %struct.net_device*, %struct.net_device** %7, align 8
  %277 = load i32, i32* %9, align 4
  %278 = call i32 @ignore_slave_event(%struct.net_device* %276, i32 %277)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %275
  br label %298

281:                                              ; preds = %275
  %282 = load %struct.vlan_group*, %struct.vlan_group** %8, align 8
  %283 = load i32, i32* %9, align 4
  %284 = call %struct.net_device* @vlan_group_get_device(%struct.vlan_group* %282, i32 %283)
  store %struct.net_device* %284, %struct.net_device** %11, align 8
  %285 = load %struct.net_device*, %struct.net_device** %11, align 8
  %286 = icmp ne %struct.net_device* %285, null
  br i1 %286, label %288, label %287

287:                                              ; preds = %281
  br label %298

288:                                              ; preds = %281
  %289 = load %struct.vlan_group*, %struct.vlan_group** %8, align 8
  %290 = getelementptr inbounds %struct.vlan_group, %struct.vlan_group* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = icmp eq i32 %291, 1
  br i1 %292, label %293, label %295

293:                                              ; preds = %288
  %294 = load i32, i32* @VLAN_GROUP_ARRAY_LEN, align 4
  store i32 %294, i32* %9, align 4
  br label %295

295:                                              ; preds = %293, %288
  %296 = load %struct.net_device*, %struct.net_device** %11, align 8
  %297 = call i32 @unregister_vlan_dev(%struct.net_device* %296)
  br label %298

298:                                              ; preds = %295, %287, %280
  %299 = load i32, i32* %9, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %9, align 4
  br label %271

301:                                              ; preds = %271
  br label %302

302:                                              ; preds = %56, %301, %269, %262, %222, %181, %155, %118, %83
  br label %303

303:                                              ; preds = %302, %55
  %304 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %304
}

declare dso_local i64 @is_vlan_dev(%struct.net_device*) #1

declare dso_local i32 @__vlan_device_event(%struct.net_device*, i64) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local %struct.vlan_group* @__vlan_find_group(%struct.net_device*) #1

declare dso_local i32 @ignore_slave_event(%struct.net_device*, i32) #1

declare dso_local %struct.net_device* @vlan_group_get_device(%struct.vlan_group*, i32) #1

declare dso_local i32 @netif_stacked_transfer_operstate(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @vlan_sync_address(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_set_mtu(%struct.net_device*, i32) #1

declare dso_local i32 @vlan_transfer_features(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_change_flags(%struct.net_device*, i32) #1

declare dso_local i32 @unregister_vlan_dev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
