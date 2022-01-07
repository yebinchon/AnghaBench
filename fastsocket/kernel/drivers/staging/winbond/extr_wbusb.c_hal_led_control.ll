; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wbusb.c_hal_led_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_wbusb.c_hal_led_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsoft_priv = type { i32, i32, %struct.hw_data }
%struct.hw_data = type { i32, i32, i32, i64, i32, %struct.TYPE_2__, i64, i32, i32, i32, i64, i64, i64, %struct.wb35_reg }
%struct.TYPE_2__ = type { i64 }
%struct.wb35_reg = type { i32 }

@HAL_LED_SET_MASK = common dso_local global i32 0, align 4
@HAL_LED_SET_SHIFT = common dso_local global i32 0, align 4
@LED_GRAY2 = common dso_local global i32* null, align 8
@LED_GRAY = common dso_local global i32* null, align 8
@DEFAULT_NULL_PACKET_COUNT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @hal_led_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hal_led_control(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.wbsoft_priv*, align 8
  %4 = alloca %struct.hw_data*, align 8
  %5 = alloca %struct.wb35_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = inttoptr i64 %10 to %struct.wbsoft_priv*
  store %struct.wbsoft_priv* %11, %struct.wbsoft_priv** %3, align 8
  %12 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %3, align 8
  %13 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %12, i32 0, i32 2
  store %struct.hw_data* %13, %struct.hw_data** %4, align 8
  %14 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %15 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %14, i32 0, i32 13
  store %struct.wb35_reg* %15, %struct.wb35_reg** %5, align 8
  %16 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %17 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @HAL_LED_SET_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @HAL_LED_SET_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %6, align 4
  store i32 500, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %23 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %24 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %23, i32 0, i32 12
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %619

28:                                               ; preds = %1
  %29 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %30 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %125

33:                                               ; preds = %28
  %34 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %35 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 255
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %40, label %124

40:                                               ; preds = %33
  store i32 100, i32* %7, align 4
  %41 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %42 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 8
  %45 = and i32 %44, 255
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  switch i32 %46, label %93 [
    i32 1, label %47
    i32 2, label %58
    i32 3, label %69
    i32 4, label %86
  ]

47:                                               ; preds = %40
  %48 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %49 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = srem i32 %50, 3
  store i32 %51, i32* %49, align 8
  store i32 4112, i32* %8, align 4
  %52 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %53 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %56, %47
  br label %93

58:                                               ; preds = %40
  %59 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %60 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = srem i32 %61, 2
  store i32 %62, i32* %60, align 8
  store i32 16, i32* %8, align 4
  %63 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %64 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %67, %58
  br label %93

69:                                               ; preds = %40
  %70 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %71 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = srem i32 %72, 15
  store i32 %73, i32* %71, align 8
  store i32 16, i32* %8, align 4
  %74 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %75 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp sge i32 %76, 9
  br i1 %77, label %84, label %78

78:                                               ; preds = %69
  %79 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %80 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = srem i32 %81, 2
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78, %69
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %84, %78
  br label %93

86:                                               ; preds = %40
  store i32 4096, i32* %8, align 4
  %87 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %88 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = icmp sge i32 %89, 3000
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %91, %86
  br label %93

93:                                               ; preds = %40, %92, %85, %68, %57
  %94 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %95 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %100 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 7
  br i1 %102, label %103, label %118

103:                                              ; preds = %93
  %104 = load i32, i32* %8, align 4
  %105 = and i32 %104, 255
  %106 = shl i32 %105, 8
  %107 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %108 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* %8, align 4
  %112 = and i32 %111, 65280
  %113 = ashr i32 %112, 8
  %114 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %115 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %103, %93
  %119 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %120 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %121 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @Wb35Reg_Write(%struct.hw_data* %119, i32 956, i32 %122)
  br label %124

124:                                              ; preds = %118, %33
  br label %598

125:                                              ; preds = %28
  %126 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %127 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %126, i32 0, i32 11
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %132 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %131, i32 0, i32 10
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %130, %125
  %136 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %137 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 4112
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %135
  %142 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %143 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, -4113
  store i32 %145, i32* %143, align 4
  %146 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %147 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %148 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @Wb35Reg_Write(%struct.hw_data* %146, i32 956, i32 %149)
  br label %151

151:                                              ; preds = %141, %135
  br label %597

152:                                              ; preds = %130
  %153 = load i32, i32* %6, align 4
  switch i32 %153, label %468 [
    i32 4, label %154
    i32 6, label %230
    i32 5, label %344
  ]

154:                                              ; preds = %152
  %155 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %156 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %155, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %212, label %159

159:                                              ; preds = %154
  %160 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %161 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %160, i32 0, i32 9
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %194

164:                                              ; preds = %159
  %165 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %166 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %164
  %170 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %171 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %172, 16
  store i32 %173, i32* %171, align 4
  %174 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %175 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %176 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @Wb35Reg_Write(%struct.hw_data* %174, i32 956, i32 %177)
  %179 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %180 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %179, i32 0, i32 2
  store i32 1, i32* %180, align 8
  store i32 300, i32* %7, align 4
  br label %193

181:                                              ; preds = %164
  %182 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %183 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %184, -17
  store i32 %185, i32* %183, align 4
  %186 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %187 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %188 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @Wb35Reg_Write(%struct.hw_data* %186, i32 956, i32 %189)
  %191 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %192 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %191, i32 0, i32 2
  store i32 0, i32* %192, align 8
  store i32 300, i32* %7, align 4
  br label %193

193:                                              ; preds = %181, %169
  br label %211

194:                                              ; preds = %159
  %195 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %196 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, 16
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %194
  %201 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %202 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = and i32 %203, -17
  store i32 %204, i32* %202, align 4
  %205 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %206 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %207 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @Wb35Reg_Write(%struct.hw_data* %205, i32 956, i32 %208)
  br label %210

210:                                              ; preds = %200, %194
  br label %211

211:                                              ; preds = %210, %193
  br label %229

212:                                              ; preds = %154
  %213 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %214 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = and i32 %215, 16
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %228

218:                                              ; preds = %212
  %219 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %220 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = or i32 %221, 16
  store i32 %222, i32* %220, align 4
  %223 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %224 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %225 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @Wb35Reg_Write(%struct.hw_data* %223, i32 956, i32 %226)
  br label %228

228:                                              ; preds = %218, %212
  br label %229

229:                                              ; preds = %228, %211
  br label %575

230:                                              ; preds = %152
  %231 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %232 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %231, i32 0, i32 6
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %326, label %235

235:                                              ; preds = %230
  %236 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %237 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %236, i32 0, i32 9
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %274

240:                                              ; preds = %235
  %241 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %242 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %261

245:                                              ; preds = %240
  %246 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %247 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = and i32 %248, -16
  store i32 %249, i32* %247, align 4
  %250 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %251 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = or i32 %252, 16
  store i32 %253, i32* %251, align 4
  %254 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %255 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %256 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @Wb35Reg_Write(%struct.hw_data* %254, i32 956, i32 %257)
  %259 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %260 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %259, i32 0, i32 2
  store i32 1, i32* %260, align 8
  store i32 300, i32* %7, align 4
  br label %273

261:                                              ; preds = %240
  %262 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %263 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = and i32 %264, -32
  store i32 %265, i32* %263, align 4
  %266 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %267 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %268 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @Wb35Reg_Write(%struct.hw_data* %266, i32 956, i32 %269)
  %271 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %272 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %271, i32 0, i32 2
  store i32 0, i32* %272, align 8
  store i32 300, i32* %7, align 4
  br label %273

273:                                              ; preds = %261, %245
  br label %325

274:                                              ; preds = %235
  %275 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %276 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  store i32 %277, i32* %8, align 4
  %278 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %279 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = and i32 %280, -32
  store i32 %281, i32* %279, align 4
  %282 = load i32*, i32** @LED_GRAY2, align 8
  %283 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %284 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = srem i32 %285, 30
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %282, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %308

291:                                              ; preds = %274
  %292 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %293 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = or i32 %294, 16
  store i32 %295, i32* %293, align 4
  %296 = load i32*, i32** @LED_GRAY2, align 8
  %297 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %298 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = srem i32 %299, 30
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %296, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %305 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = or i32 %306, %303
  store i32 %307, i32* %305, align 4
  br label %308

308:                                              ; preds = %291, %274
  %309 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %310 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %310, align 8
  %313 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %314 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* %8, align 4
  %317 = icmp ne i32 %315, %316
  br i1 %317, label %318, label %324

318:                                              ; preds = %308
  %319 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %320 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %321 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = call i32 @Wb35Reg_Write(%struct.hw_data* %319, i32 956, i32 %322)
  br label %324

324:                                              ; preds = %318, %308
  store i32 100, i32* %7, align 4
  br label %325

325:                                              ; preds = %324, %273
  br label %343

326:                                              ; preds = %230
  %327 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %328 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = and i32 %329, 16
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %342

332:                                              ; preds = %326
  %333 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %334 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = or i32 %335, 16
  store i32 %336, i32* %334, align 4
  %337 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %338 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %339 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @Wb35Reg_Write(%struct.hw_data* %337, i32 956, i32 %340)
  br label %342

342:                                              ; preds = %332, %326
  br label %343

343:                                              ; preds = %342, %325
  br label %575

344:                                              ; preds = %152
  %345 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %346 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %345, i32 0, i32 6
  %347 = load i64, i64* %346, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %402, label %349

349:                                              ; preds = %344
  %350 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %351 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %350, i32 0, i32 9
  %352 = load i32, i32* %351, align 8
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %384

354:                                              ; preds = %349
  %355 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %356 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 8
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %371

359:                                              ; preds = %354
  %360 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %361 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = or i32 %362, 4096
  store i32 %363, i32* %361, align 4
  %364 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %365 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %366 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @Wb35Reg_Write(%struct.hw_data* %364, i32 956, i32 %367)
  %369 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %370 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %369, i32 0, i32 2
  store i32 1, i32* %370, align 8
  store i32 300, i32* %7, align 4
  br label %383

371:                                              ; preds = %354
  %372 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %373 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = and i32 %374, -4097
  store i32 %375, i32* %373, align 4
  %376 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %377 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %378 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @Wb35Reg_Write(%struct.hw_data* %376, i32 956, i32 %379)
  %381 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %382 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %381, i32 0, i32 2
  store i32 0, i32* %382, align 8
  store i32 300, i32* %7, align 4
  br label %383

383:                                              ; preds = %371, %359
  br label %401

384:                                              ; preds = %349
  %385 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %386 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = and i32 %387, 4096
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %400

390:                                              ; preds = %384
  %391 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %392 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = and i32 %393, -4097
  store i32 %394, i32* %392, align 4
  %395 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %396 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %397 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = call i32 @Wb35Reg_Write(%struct.hw_data* %395, i32 956, i32 %398)
  br label %400

400:                                              ; preds = %390, %384
  br label %401

401:                                              ; preds = %400, %383
  br label %467

402:                                              ; preds = %344
  %403 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %3, align 8
  %404 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %407 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %406, i32 0, i32 8
  %408 = load i32, i32* %407, align 4
  %409 = icmp ne i32 %405, %408
  br i1 %409, label %418, label %410

410:                                              ; preds = %402
  %411 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %3, align 8
  %412 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %415 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %414, i32 0, i32 7
  %416 = load i32, i32* %415, align 8
  %417 = icmp ne i32 %413, %416
  br i1 %417, label %418, label %445

418:                                              ; preds = %410, %402
  %419 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %420 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  %422 = and i32 %421, 12288
  %423 = icmp ne i32 %422, 12288
  br i1 %423, label %424, label %434

424:                                              ; preds = %418
  %425 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %426 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = or i32 %427, 12288
  store i32 %428, i32* %426, align 4
  %429 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %430 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %431 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = call i32 @Wb35Reg_Write(%struct.hw_data* %429, i32 956, i32 %432)
  br label %434

434:                                              ; preds = %424, %418
  %435 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %3, align 8
  %436 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %439 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %438, i32 0, i32 8
  store i32 %437, i32* %439, align 4
  %440 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %3, align 8
  %441 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %444 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %443, i32 0, i32 7
  store i32 %442, i32* %444, align 8
  store i32 200, i32* %7, align 4
  br label %466

445:                                              ; preds = %410
  %446 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %447 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 4
  %449 = and i32 %448, 12288
  %450 = icmp ne i32 %449, 4096
  br i1 %450, label %451, label %465

451:                                              ; preds = %445
  %452 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %453 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 4
  %455 = and i32 %454, -12289
  store i32 %455, i32* %453, align 4
  %456 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %457 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %456, i32 0, i32 0
  %458 = load i32, i32* %457, align 4
  %459 = or i32 %458, 4096
  store i32 %459, i32* %457, align 4
  %460 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %461 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %462 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = call i32 @Wb35Reg_Write(%struct.hw_data* %460, i32 956, i32 %463)
  br label %465

465:                                              ; preds = %451, %445
  br label %466

466:                                              ; preds = %465, %434
  br label %467

467:                                              ; preds = %466, %401
  br label %575

468:                                              ; preds = %152
  %469 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %470 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  %472 = and i32 %471, 12288
  %473 = icmp ne i32 %472, 12288
  br i1 %473, label %474, label %484

474:                                              ; preds = %468
  %475 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %476 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = or i32 %477, 12288
  store i32 %478, i32* %476, align 4
  %479 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %480 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %481 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = call i32 @Wb35Reg_Write(%struct.hw_data* %479, i32 956, i32 %482)
  br label %484

484:                                              ; preds = %474, %468
  %485 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %486 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %485, i32 0, i32 2
  %487 = load i32, i32* %486, align 8
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %538

489:                                              ; preds = %484
  %490 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %491 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 4
  %493 = and i32 %492, -16
  store i32 %493, i32* %491, align 4
  %494 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %495 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 4
  %497 = or i32 %496, 16
  store i32 %497, i32* %495, align 4
  %498 = load i32*, i32** @LED_GRAY, align 8
  %499 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %500 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %499, i32 0, i32 2
  %501 = load i32, i32* %500, align 8
  %502 = sub nsw i32 %501, 1
  %503 = srem i32 %502, 20
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds i32, i32* %498, i64 %504
  %506 = load i32, i32* %505, align 4
  %507 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %508 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 4
  %510 = or i32 %509, %506
  store i32 %510, i32* %508, align 4
  %511 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %512 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %513 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 4
  %515 = call i32 @Wb35Reg_Write(%struct.hw_data* %511, i32 956, i32 %514)
  %516 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %517 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %516, i32 0, i32 2
  %518 = load i32, i32* %517, align 8
  %519 = add nsw i32 %518, 2
  store i32 %519, i32* %517, align 8
  %520 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %521 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %520, i32 0, i32 2
  %522 = load i32, i32* %521, align 8
  %523 = icmp slt i32 %522, 40
  br i1 %523, label %524, label %525

524:                                              ; preds = %489
  store i32 100, i32* %7, align 4
  br label %537

525:                                              ; preds = %489
  %526 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %527 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %526, i32 0, i32 2
  store i32 0, i32* %527, align 8
  %528 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %529 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %528, i32 0, i32 0
  %530 = load i32, i32* %529, align 4
  %531 = and i32 %530, -16
  store i32 %531, i32* %529, align 4
  %532 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %533 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %534 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 4
  %536 = call i32 @Wb35Reg_Write(%struct.hw_data* %532, i32 956, i32 %535)
  br label %537

537:                                              ; preds = %525, %524
  br label %575

538:                                              ; preds = %484
  %539 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %540 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %539, i32 0, i32 6
  %541 = load i64, i64* %540, align 8
  %542 = icmp ne i64 %541, 0
  br i1 %542, label %543, label %557

543:                                              ; preds = %538
  %544 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %545 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 4
  %547 = and i32 %546, 16
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %556, label %549

549:                                              ; preds = %543
  %550 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %551 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 4
  %553 = or i32 %552, 16
  store i32 %553, i32* %551, align 4
  %554 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %555 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %554, i32 0, i32 2
  store i32 1, i32* %555, align 8
  store i32 50, i32* %7, align 4
  br label %556

556:                                              ; preds = %549, %543
  br label %574

557:                                              ; preds = %538
  %558 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %559 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %558, i32 0, i32 0
  %560 = load i32, i32* %559, align 4
  %561 = and i32 %560, 16
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %573

563:                                              ; preds = %557
  %564 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %565 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %564, i32 0, i32 0
  %566 = load i32, i32* %565, align 4
  %567 = and i32 %566, -17
  store i32 %567, i32* %565, align 4
  %568 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %569 = load %struct.wb35_reg*, %struct.wb35_reg** %5, align 8
  %570 = getelementptr inbounds %struct.wb35_reg, %struct.wb35_reg* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 4
  %572 = call i32 @Wb35Reg_Write(%struct.hw_data* %568, i32 956, i32 %571)
  br label %573

573:                                              ; preds = %563, %557
  br label %574

574:                                              ; preds = %573, %556
  br label %575

575:                                              ; preds = %574, %537, %467, %343, %229
  %576 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %577 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %576, i32 0, i32 6
  %578 = load i64, i64* %577, align 8
  %579 = icmp ne i64 %578, 0
  br i1 %579, label %580, label %596

580:                                              ; preds = %575
  %581 = load i32, i32* %7, align 4
  %582 = sext i32 %581 to i64
  %583 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %584 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %583, i32 0, i32 3
  %585 = load i64, i64* %584, align 8
  %586 = add nsw i64 %585, %582
  store i64 %586, i64* %584, align 8
  %587 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %588 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %587, i32 0, i32 3
  %589 = load i64, i64* %588, align 8
  %590 = load i64, i64* @DEFAULT_NULL_PACKET_COUNT, align 8
  %591 = icmp sge i64 %589, %590
  br i1 %591, label %592, label %595

592:                                              ; preds = %580
  %593 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %594 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %593, i32 0, i32 3
  store i64 0, i64* %594, align 8
  br label %595

595:                                              ; preds = %592, %580
  br label %596

596:                                              ; preds = %595, %575
  br label %597

597:                                              ; preds = %596, %151
  br label %598

598:                                              ; preds = %597, %124
  %599 = load i32, i32* %7, align 4
  %600 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %601 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %600, i32 0, i32 4
  %602 = load i32, i32* %601, align 8
  %603 = add nsw i32 %602, %599
  store i32 %603, i32* %601, align 8
  %604 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %3, align 8
  %605 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %606 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %605, i32 0, i32 4
  %607 = load i32, i32* %606, align 8
  %608 = call i32 @Wb35Tx_CurrentTime(%struct.wbsoft_priv* %604, i32 %607)
  %609 = load i64, i64* @jiffies, align 8
  %610 = load i32, i32* %7, align 4
  %611 = call i64 @msecs_to_jiffies(i32 %610)
  %612 = add nsw i64 %609, %611
  %613 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %614 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %613, i32 0, i32 5
  %615 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %614, i32 0, i32 0
  store i64 %612, i64* %615, align 8
  %616 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %617 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %616, i32 0, i32 5
  %618 = call i32 @add_timer(%struct.TYPE_2__* %617)
  br label %619

619:                                              ; preds = %598, %27
  ret void
}

declare dso_local i32 @Wb35Reg_Write(%struct.hw_data*, i32, i32) #1

declare dso_local i32 @Wb35Tx_CurrentTime(%struct.wbsoft_priv*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
