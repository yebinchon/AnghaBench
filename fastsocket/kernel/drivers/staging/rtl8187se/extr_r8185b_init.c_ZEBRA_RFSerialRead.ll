; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_ZEBRA_RFSerialRead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_ZEBRA_RFSerialRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@RF_SW_CONFIG = common dso_local global i32 0, align 4
@RF_SW_CFG_SI = common dso_local global i32 0, align 4
@RFPinsOutput = common dso_local global i32 0, align 4
@RFPinsEnable = common dso_local global i32 0, align 4
@RFPinsSelect = common dso_local global i32 0, align 4
@RFPinsInput = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ZEBRA_RFSerialRead(%struct.net_device* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_4__, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_4__, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = load i32, i32* @RF_SW_CONFIG, align 4
  %25 = call i32 @read_nic_byte(%struct.net_device* %23, i32 %24)
  store i32 %25, i32* %21, align 4
  %26 = load i32, i32* @RF_SW_CFG_SI, align 4
  %27 = load i32, i32* %21, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %21, align 4
  %29 = load %struct.net_device*, %struct.net_device** %7, align 8
  %30 = load i32, i32* @RF_SW_CONFIG, align 4
  %31 = load i32, i32* %21, align 4
  %32 = call i32 @write_nic_byte(%struct.net_device* %29, i32 %30, i32 %31)
  %33 = load %struct.net_device*, %struct.net_device** %7, align 8
  %34 = load i32, i32* @RFPinsOutput, align 4
  %35 = call i32 @read_nic_word(%struct.net_device* %33, i32 %34)
  store i32 %35, i32* %15, align 4
  store i32 %35, i32* %19, align 4
  %36 = load %struct.net_device*, %struct.net_device** %7, align 8
  %37 = load i32, i32* @RFPinsEnable, align 4
  %38 = call i32 @read_nic_word(%struct.net_device* %36, i32 %37)
  store i32 %38, i32* %16, align 4
  %39 = load %struct.net_device*, %struct.net_device** %7, align 8
  %40 = load i32, i32* @RFPinsSelect, align 4
  %41 = call i32 @read_nic_word(%struct.net_device* %39, i32 %40)
  store i32 %41, i32* %17, align 4
  %42 = load %struct.net_device*, %struct.net_device** %7, align 8
  %43 = load i32, i32* @RFPinsEnable, align 4
  %44 = load i32, i32* %16, align 4
  %45 = or i32 %44, 15
  %46 = call i32 @write_nic_word(%struct.net_device* %42, i32 %43, i32 %45)
  %47 = load %struct.net_device*, %struct.net_device** %7, align 8
  %48 = load i32, i32* @RFPinsSelect, align 4
  %49 = load i32, i32* %17, align 4
  %50 = or i32 %49, 15
  %51 = call i32 @write_nic_word(%struct.net_device* %47, i32 %48, i32 %50)
  %52 = load i32*, i32** %10, align 8
  store i32 0, i32* %52, align 4
  %53 = load i32, i32* %15, align 4
  %54 = and i32 %53, -16
  store i32 %54, i32* %15, align 4
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 0, i32* %55, align 4
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = load i32, i32* @RFPinsOutput, align 4
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %15, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @write_nic_word(%struct.net_device* %58, i32 %59, i32 %63)
  %65 = call i32 @udelay(i32 4)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 0, i32* %66, align 4
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  store i32 0, i32* %72, align 4
  %73 = load %struct.net_device*, %struct.net_device** %7, align 8
  %74 = load i32, i32* @RFPinsOutput, align 4
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %15, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @write_nic_word(%struct.net_device* %73, i32 %74, i32 %78)
  %80 = call i32 @udelay(i32 5)
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 -2147483648
  store i32 %84, i32* %20, align 4
  store i32 0, i32* %14, align 4
  br label %85

85:                                               ; preds = %203, %6
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %9, align 4
  %88 = sdiv i32 %87, 2
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %206

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %20, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 1, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.net_device*, %struct.net_device** %7, align 8
  %100 = load i32, i32* @RFPinsOutput, align 4
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %15, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @write_nic_word(%struct.net_device* %99, i32 %100, i32 %104)
  %106 = call i32 @udelay(i32 1)
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  store i32 1, i32* %108, align 4
  %109 = load %struct.net_device*, %struct.net_device** %7, align 8
  %110 = load i32, i32* @RFPinsOutput, align 4
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %15, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @write_nic_word(%struct.net_device* %109, i32 %110, i32 %114)
  %116 = call i32 @udelay(i32 2)
  %117 = load %struct.net_device*, %struct.net_device** %7, align 8
  %118 = load i32, i32* @RFPinsOutput, align 4
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %15, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @write_nic_word(%struct.net_device* %117, i32 %118, i32 %122)
  %124 = call i32 @udelay(i32 2)
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %90
  %128 = load i32, i32* %20, align 4
  %129 = shl i32 %128, 1
  br label %133

130:                                              ; preds = %90
  %131 = load i32, i32* %20, align 4
  %132 = ashr i32 %131, 1
  br label %133

133:                                              ; preds = %130, %127
  %134 = phi i32 [ %129, %127 ], [ %132, %130 ]
  store i32 %134, i32* %20, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp eq i32 %135, 2
  br i1 %136, label %137, label %158

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  store i32 1, i32* %139, align 4
  %140 = load %struct.net_device*, %struct.net_device** %7, align 8
  %141 = load i32, i32* @RFPinsOutput, align 4
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %15, align 4
  %145 = or i32 %143, %144
  %146 = call i32 @write_nic_word(%struct.net_device* %140, i32 %141, i32 %145)
  %147 = call i32 @udelay(i32 2)
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  store i32 0, i32* %149, align 4
  %150 = load %struct.net_device*, %struct.net_device** %7, align 8
  %151 = load i32, i32* @RFPinsOutput, align 4
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %15, align 4
  %155 = or i32 %153, %154
  %156 = call i32 @write_nic_word(%struct.net_device* %150, i32 %151, i32 %155)
  %157 = call i32 @udelay(i32 2)
  br label %206

158:                                              ; preds = %133
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* %20, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 1, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  %167 = load %struct.net_device*, %struct.net_device** %7, align 8
  %168 = load i32, i32* @RFPinsOutput, align 4
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %15, align 4
  %172 = or i32 %170, %171
  %173 = call i32 @write_nic_word(%struct.net_device* %167, i32 %168, i32 %172)
  %174 = call i32 @udelay(i32 2)
  %175 = load %struct.net_device*, %struct.net_device** %7, align 8
  %176 = load i32, i32* @RFPinsOutput, align 4
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %15, align 4
  %180 = or i32 %178, %179
  %181 = call i32 @write_nic_word(%struct.net_device* %175, i32 %176, i32 %180)
  %182 = call i32 @udelay(i32 2)
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  store i32 0, i32* %184, align 4
  %185 = load %struct.net_device*, %struct.net_device** %7, align 8
  %186 = load i32, i32* @RFPinsOutput, align 4
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %15, align 4
  %190 = or i32 %188, %189
  %191 = call i32 @write_nic_word(%struct.net_device* %185, i32 %186, i32 %190)
  %192 = call i32 @udelay(i32 1)
  %193 = load i32, i32* %12, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %158
  %196 = load i32, i32* %20, align 4
  %197 = shl i32 %196, 1
  br label %201

198:                                              ; preds = %158
  %199 = load i32, i32* %20, align 4
  %200 = ashr i32 %199, 1
  br label %201

201:                                              ; preds = %198, %195
  %202 = phi i32 [ %197, %195 ], [ %200, %198 ]
  store i32 %202, i32* %20, align 4
  br label %203

203:                                              ; preds = %201
  %204 = load i32, i32* %14, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %14, align 4
  br label %85

206:                                              ; preds = %137, %85
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %207, i32 0, i32 1
  store i32 0, i32* %208, align 4
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %209, i32 0, i32 3
  store i32 0, i32* %210, align 4
  %211 = load %struct.net_device*, %struct.net_device** %7, align 8
  %212 = load i32, i32* @RFPinsOutput, align 4
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* %15, align 4
  %216 = or i32 %214, %215
  %217 = call i32 @write_nic_word(%struct.net_device* %211, i32 %212, i32 %216)
  %218 = call i32 @udelay(i32 2)
  %219 = load i32, i32* %12, align 4
  %220 = icmp ne i32 %219, 0
  %221 = zext i1 %220 to i64
  %222 = select i1 %220, i32 1, i32 2048
  store i32 %222, i32* %20, align 4
  %223 = load %struct.net_device*, %struct.net_device** %7, align 8
  %224 = load i32, i32* @RFPinsEnable, align 4
  %225 = load i32, i32* %16, align 4
  %226 = or i32 %225, 14
  %227 = and i32 %226, -2
  %228 = call i32 @write_nic_word(%struct.net_device* %223, i32 %224, i32 %227)
  store i32 0, i32* %14, align 4
  br label %229

229:                                              ; preds = %305, %206
  %230 = load i32, i32* %14, align 4
  %231 = load i32, i32* %11, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %308

233:                                              ; preds = %229
  %234 = load %struct.net_device*, %struct.net_device** %7, align 8
  %235 = load i32, i32* @RFPinsOutput, align 4
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %15, align 4
  %239 = or i32 %237, %238
  %240 = call i32 @write_nic_word(%struct.net_device* %234, i32 %235, i32 %239)
  %241 = call i32 @udelay(i32 1)
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i32 0, i32 1
  store i32 1, i32* %243, align 4
  %244 = load %struct.net_device*, %struct.net_device** %7, align 8
  %245 = load i32, i32* @RFPinsOutput, align 4
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %15, align 4
  %249 = or i32 %247, %248
  %250 = call i32 @write_nic_word(%struct.net_device* %244, i32 %245, i32 %249)
  %251 = call i32 @udelay(i32 2)
  %252 = load %struct.net_device*, %struct.net_device** %7, align 8
  %253 = load i32, i32* @RFPinsOutput, align 4
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %15, align 4
  %257 = or i32 %255, %256
  %258 = call i32 @write_nic_word(%struct.net_device* %252, i32 %253, i32 %257)
  %259 = call i32 @udelay(i32 2)
  %260 = load %struct.net_device*, %struct.net_device** %7, align 8
  %261 = load i32, i32* @RFPinsOutput, align 4
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %15, align 4
  %265 = or i32 %263, %264
  %266 = call i32 @write_nic_word(%struct.net_device* %260, i32 %261, i32 %265)
  %267 = call i32 @udelay(i32 2)
  %268 = load %struct.net_device*, %struct.net_device** %7, align 8
  %269 = load i32, i32* @RFPinsInput, align 4
  %270 = call i32 @read_nic_word(%struct.net_device* %268, i32 %269)
  store i32 %270, i32* %18, align 4
  %271 = load i32, i32* %18, align 4
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32 %271, i32* %272, align 4
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %233
  %278 = load i32, i32* %20, align 4
  br label %280

279:                                              ; preds = %233
  br label %280

280:                                              ; preds = %279, %277
  %281 = phi i32 [ %278, %277 ], [ 0, %279 ]
  %282 = load i32*, i32** %10, align 8
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, %281
  store i32 %284, i32* %282, align 4
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 1
  store i32 0, i32* %286, align 4
  %287 = load %struct.net_device*, %struct.net_device** %7, align 8
  %288 = load i32, i32* @RFPinsOutput, align 4
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %15, align 4
  %292 = or i32 %290, %291
  %293 = call i32 @write_nic_word(%struct.net_device* %287, i32 %288, i32 %292)
  %294 = call i32 @udelay(i32 2)
  %295 = load i32, i32* %12, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %280
  %298 = load i32, i32* %20, align 4
  %299 = shl i32 %298, 1
  br label %303

300:                                              ; preds = %280
  %301 = load i32, i32* %20, align 4
  %302 = ashr i32 %301, 1
  br label %303

303:                                              ; preds = %300, %297
  %304 = phi i32 [ %299, %297 ], [ %302, %300 ]
  store i32 %304, i32* %20, align 4
  br label %305

305:                                              ; preds = %303
  %306 = load i32, i32* %14, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %14, align 4
  br label %229

308:                                              ; preds = %229
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 0
  store i32 1, i32* %310, align 4
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %312 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %311, i32 0, i32 1
  store i32 0, i32* %312, align 4
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %313, i32 0, i32 3
  store i32 0, i32* %314, align 4
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 2
  store i32 1, i32* %316, align 4
  %317 = load %struct.net_device*, %struct.net_device** %7, align 8
  %318 = load i32, i32* @RFPinsOutput, align 4
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %15, align 4
  %322 = or i32 %320, %321
  %323 = call i32 @write_nic_word(%struct.net_device* %317, i32 %318, i32 %322)
  %324 = call i32 @udelay(i32 2)
  %325 = load %struct.net_device*, %struct.net_device** %7, align 8
  %326 = load i32, i32* @RFPinsEnable, align 4
  %327 = load i32, i32* %16, align 4
  %328 = call i32 @write_nic_word(%struct.net_device* %325, i32 %326, i32 %327)
  %329 = load %struct.net_device*, %struct.net_device** %7, align 8
  %330 = load i32, i32* @RFPinsSelect, align 4
  %331 = load i32, i32* %17, align 4
  %332 = call i32 @write_nic_word(%struct.net_device* %329, i32 %330, i32 %331)
  %333 = load %struct.net_device*, %struct.net_device** %7, align 8
  %334 = load i32, i32* @RFPinsOutput, align 4
  %335 = call i32 @write_nic_word(%struct.net_device* %333, i32 %334, i32 928)
  ret void
}

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @read_nic_word(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
