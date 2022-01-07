; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k2.c_hw_dac_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k2.c_hw_dac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }
%struct.dac_conf = type { i32 }
%struct.regs_cs4382 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GPIO_CTRL = common dso_local global i32 0, align 4
@GPIO_DATA = common dso_local global i32 0, align 4
@CS4382_MC1 = common dso_local global i32 0, align 4
@CS4382_MC2 = common dso_local global i32 0, align 4
@CS4382_MC3 = common dso_local global i32 0, align 4
@CS4382_FC = common dso_local global i32 0, align 4
@CS4382_IC = common dso_local global i32 0, align 4
@CS4382_XC1 = common dso_local global i32 0, align 4
@CS4382_VCA1 = common dso_local global i32 0, align 4
@CS4382_VCB1 = common dso_local global i32 0, align 4
@CS4382_XC2 = common dso_local global i32 0, align 4
@CS4382_VCA2 = common dso_local global i32 0, align 4
@CS4382_VCB2 = common dso_local global i32 0, align 4
@CS4382_XC3 = common dso_local global i32 0, align 4
@CS4382_VCA3 = common dso_local global i32 0, align 4
@CS4382_VCB3 = common dso_local global i32 0, align 4
@CS4382_XC4 = common dso_local global i32 0, align 4
@CS4382_VCA4 = common dso_local global i32 0, align 4
@CS4382_VCB4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, %struct.dac_conf*)* @hw_dac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_dac_init(%struct.hw* %0, %struct.dac_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw*, align 8
  %5 = alloca %struct.dac_conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.regs_cs4382, align 4
  %10 = alloca %struct.regs_cs4382, align 4
  store %struct.hw* %0, %struct.hw** %4, align 8
  store %struct.dac_conf* %1, %struct.dac_conf** %5, align 8
  %11 = bitcast %struct.regs_cs4382* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 136, i1 false)
  %12 = bitcast %struct.regs_cs4382* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 136, i1 false)
  %13 = bitcast i8* %12 to %struct.regs_cs4382*
  %14 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %13, i32 0, i32 2
  store i32 132, i32* %15, align 4
  %16 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %13, i32 0, i32 5
  store i32 36, i32* %16, align 4
  %17 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %13, i32 0, i32 8
  store i32 36, i32* %17, align 4
  %18 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %13, i32 0, i32 11
  store i32 36, i32* %18, align 4
  %19 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %13, i32 0, i32 14
  store i32 36, i32* %19, align 4
  %20 = load %struct.hw*, %struct.hw** %4, align 8
  %21 = load i32, i32* @GPIO_CTRL, align 4
  %22 = call i32 @hw_read_20kx(%struct.hw* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, 2
  store i32 %24, i32* %7, align 4
  %25 = load %struct.hw*, %struct.hw** %4, align 8
  %26 = load i32, i32* @GPIO_CTRL, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @hw_write_20kx(%struct.hw* %25, i32 %26, i32 %27)
  %29 = load %struct.hw*, %struct.hw** %4, align 8
  %30 = call i32 @hw20k2_i2c_init(%struct.hw* %29, i32 24, i32 1, i32 1)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %257

34:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %193, %34
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %196

38:                                               ; preds = %35
  %39 = load %struct.hw*, %struct.hw** %4, align 8
  %40 = load i32, i32* @GPIO_DATA, align 4
  %41 = call i32 @hw_read_20kx(%struct.hw* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, -3
  store i32 %43, i32* %7, align 4
  %44 = load %struct.hw*, %struct.hw** %4, align 8
  %45 = load i32, i32* @GPIO_DATA, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @hw_write_20kx(%struct.hw* %44, i32 %45, i32 %46)
  %48 = call i32 @mdelay(i32 10)
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, 2
  store i32 %50, i32* %7, align 4
  %51 = load %struct.hw*, %struct.hw** %4, align 8
  %52 = load i32, i32* @GPIO_DATA, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @hw_write_20kx(%struct.hw* %51, i32 %52, i32 %53)
  %55 = call i32 @mdelay(i32 50)
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, -3
  store i32 %57, i32* %7, align 4
  %58 = load %struct.hw*, %struct.hw** %4, align 8
  %59 = load i32, i32* @GPIO_DATA, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @hw_write_20kx(%struct.hw* %58, i32 %59, i32 %60)
  %62 = call i32 @mdelay(i32 10)
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, 2
  store i32 %64, i32* %7, align 4
  %65 = load %struct.hw*, %struct.hw** %4, align 8
  %66 = load i32, i32* @GPIO_DATA, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @hw_write_20kx(%struct.hw* %65, i32 %66, i32 %67)
  %69 = call i32 @mdelay(i32 50)
  %70 = load %struct.hw*, %struct.hw** %4, align 8
  %71 = load i32, i32* @CS4382_MC1, align 4
  %72 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 33
  %73 = call i64 @hw20k2_i2c_read(%struct.hw* %70, i32 %71, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %38
  br label %193

76:                                               ; preds = %38
  %77 = load %struct.hw*, %struct.hw** %4, align 8
  %78 = load i32, i32* @CS4382_MC2, align 4
  %79 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 32
  %80 = call i64 @hw20k2_i2c_read(%struct.hw* %77, i32 %78, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %193

83:                                               ; preds = %76
  %84 = load %struct.hw*, %struct.hw** %4, align 8
  %85 = load i32, i32* @CS4382_MC3, align 4
  %86 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 31
  %87 = call i64 @hw20k2_i2c_read(%struct.hw* %84, i32 %85, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %193

90:                                               ; preds = %83
  %91 = load %struct.hw*, %struct.hw** %4, align 8
  %92 = load i32, i32* @CS4382_FC, align 4
  %93 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 30
  %94 = call i64 @hw20k2_i2c_read(%struct.hw* %91, i32 %92, i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %193

97:                                               ; preds = %90
  %98 = load %struct.hw*, %struct.hw** %4, align 8
  %99 = load i32, i32* @CS4382_IC, align 4
  %100 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 29
  %101 = call i64 @hw20k2_i2c_read(%struct.hw* %98, i32 %99, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %193

104:                                              ; preds = %97
  %105 = load %struct.hw*, %struct.hw** %4, align 8
  %106 = load i32, i32* @CS4382_XC1, align 4
  %107 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 28
  %108 = call i64 @hw20k2_i2c_read(%struct.hw* %105, i32 %106, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  br label %193

111:                                              ; preds = %104
  %112 = load %struct.hw*, %struct.hw** %4, align 8
  %113 = load i32, i32* @CS4382_VCA1, align 4
  %114 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 27
  %115 = call i64 @hw20k2_i2c_read(%struct.hw* %112, i32 %113, i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %193

118:                                              ; preds = %111
  %119 = load %struct.hw*, %struct.hw** %4, align 8
  %120 = load i32, i32* @CS4382_VCB1, align 4
  %121 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 26
  %122 = call i64 @hw20k2_i2c_read(%struct.hw* %119, i32 %120, i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %193

125:                                              ; preds = %118
  %126 = load %struct.hw*, %struct.hw** %4, align 8
  %127 = load i32, i32* @CS4382_XC2, align 4
  %128 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 25
  %129 = call i64 @hw20k2_i2c_read(%struct.hw* %126, i32 %127, i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %193

132:                                              ; preds = %125
  %133 = load %struct.hw*, %struct.hw** %4, align 8
  %134 = load i32, i32* @CS4382_VCA2, align 4
  %135 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 24
  %136 = call i64 @hw20k2_i2c_read(%struct.hw* %133, i32 %134, i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %193

139:                                              ; preds = %132
  %140 = load %struct.hw*, %struct.hw** %4, align 8
  %141 = load i32, i32* @CS4382_VCB2, align 4
  %142 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 23
  %143 = call i64 @hw20k2_i2c_read(%struct.hw* %140, i32 %141, i32* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %193

146:                                              ; preds = %139
  %147 = load %struct.hw*, %struct.hw** %4, align 8
  %148 = load i32, i32* @CS4382_XC3, align 4
  %149 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 22
  %150 = call i64 @hw20k2_i2c_read(%struct.hw* %147, i32 %148, i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %193

153:                                              ; preds = %146
  %154 = load %struct.hw*, %struct.hw** %4, align 8
  %155 = load i32, i32* @CS4382_VCA3, align 4
  %156 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 21
  %157 = call i64 @hw20k2_i2c_read(%struct.hw* %154, i32 %155, i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %193

160:                                              ; preds = %153
  %161 = load %struct.hw*, %struct.hw** %4, align 8
  %162 = load i32, i32* @CS4382_VCB3, align 4
  %163 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 20
  %164 = call i64 @hw20k2_i2c_read(%struct.hw* %161, i32 %162, i32* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %193

167:                                              ; preds = %160
  %168 = load %struct.hw*, %struct.hw** %4, align 8
  %169 = load i32, i32* @CS4382_XC4, align 4
  %170 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 19
  %171 = call i64 @hw20k2_i2c_read(%struct.hw* %168, i32 %169, i32* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  br label %193

174:                                              ; preds = %167
  %175 = load %struct.hw*, %struct.hw** %4, align 8
  %176 = load i32, i32* @CS4382_VCA4, align 4
  %177 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 18
  %178 = call i64 @hw20k2_i2c_read(%struct.hw* %175, i32 %176, i32* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  br label %193

181:                                              ; preds = %174
  %182 = load %struct.hw*, %struct.hw** %4, align 8
  %183 = load i32, i32* @CS4382_VCB4, align 4
  %184 = getelementptr inbounds %struct.regs_cs4382, %struct.regs_cs4382* %9, i32 0, i32 17
  %185 = call i64 @hw20k2_i2c_read(%struct.hw* %182, i32 %183, i32* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  br label %193

188:                                              ; preds = %181
  %189 = call i64 @memcmp(%struct.regs_cs4382* %9, %struct.regs_cs4382* %10, i32 136)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  br label %193

192:                                              ; preds = %188
  br label %196

193:                                              ; preds = %191, %187, %180, %173, %166, %159, %152, %145, %138, %131, %124, %117, %110, %103, %96, %89, %82, %75
  %194 = load i32, i32* %8, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %8, align 4
  br label %35

196:                                              ; preds = %192, %35
  %197 = load i32, i32* %8, align 4
  %198 = icmp sge i32 %197, 2
  br i1 %198, label %199, label %200

199:                                              ; preds = %196
  br label %257

200:                                              ; preds = %196
  %201 = load %struct.hw*, %struct.hw** %4, align 8
  %202 = load i32, i32* @CS4382_MC1, align 4
  %203 = call i32 @hw20k2_i2c_write(%struct.hw* %201, i32 %202, i32 128)
  %204 = load %struct.hw*, %struct.hw** %4, align 8
  %205 = load i32, i32* @CS4382_MC2, align 4
  %206 = call i32 @hw20k2_i2c_write(%struct.hw* %204, i32 %205, i32 16)
  %207 = load %struct.dac_conf*, %struct.dac_conf** %5, align 8
  %208 = getelementptr inbounds %struct.dac_conf, %struct.dac_conf* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 1, %209
  br i1 %210, label %211, label %224

211:                                              ; preds = %200
  %212 = load %struct.hw*, %struct.hw** %4, align 8
  %213 = load i32, i32* @CS4382_XC1, align 4
  %214 = call i32 @hw20k2_i2c_write(%struct.hw* %212, i32 %213, i32 36)
  %215 = load %struct.hw*, %struct.hw** %4, align 8
  %216 = load i32, i32* @CS4382_XC2, align 4
  %217 = call i32 @hw20k2_i2c_write(%struct.hw* %215, i32 %216, i32 36)
  %218 = load %struct.hw*, %struct.hw** %4, align 8
  %219 = load i32, i32* @CS4382_XC3, align 4
  %220 = call i32 @hw20k2_i2c_write(%struct.hw* %218, i32 %219, i32 36)
  %221 = load %struct.hw*, %struct.hw** %4, align 8
  %222 = load i32, i32* @CS4382_XC4, align 4
  %223 = call i32 @hw20k2_i2c_write(%struct.hw* %221, i32 %222, i32 36)
  br label %256

224:                                              ; preds = %200
  %225 = load %struct.dac_conf*, %struct.dac_conf** %5, align 8
  %226 = getelementptr inbounds %struct.dac_conf, %struct.dac_conf* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = icmp eq i32 2, %227
  br i1 %228, label %229, label %242

229:                                              ; preds = %224
  %230 = load %struct.hw*, %struct.hw** %4, align 8
  %231 = load i32, i32* @CS4382_XC1, align 4
  %232 = call i32 @hw20k2_i2c_write(%struct.hw* %230, i32 %231, i32 37)
  %233 = load %struct.hw*, %struct.hw** %4, align 8
  %234 = load i32, i32* @CS4382_XC2, align 4
  %235 = call i32 @hw20k2_i2c_write(%struct.hw* %233, i32 %234, i32 37)
  %236 = load %struct.hw*, %struct.hw** %4, align 8
  %237 = load i32, i32* @CS4382_XC3, align 4
  %238 = call i32 @hw20k2_i2c_write(%struct.hw* %236, i32 %237, i32 37)
  %239 = load %struct.hw*, %struct.hw** %4, align 8
  %240 = load i32, i32* @CS4382_XC4, align 4
  %241 = call i32 @hw20k2_i2c_write(%struct.hw* %239, i32 %240, i32 37)
  br label %255

242:                                              ; preds = %224
  %243 = load %struct.hw*, %struct.hw** %4, align 8
  %244 = load i32, i32* @CS4382_XC1, align 4
  %245 = call i32 @hw20k2_i2c_write(%struct.hw* %243, i32 %244, i32 38)
  %246 = load %struct.hw*, %struct.hw** %4, align 8
  %247 = load i32, i32* @CS4382_XC2, align 4
  %248 = call i32 @hw20k2_i2c_write(%struct.hw* %246, i32 %247, i32 38)
  %249 = load %struct.hw*, %struct.hw** %4, align 8
  %250 = load i32, i32* @CS4382_XC3, align 4
  %251 = call i32 @hw20k2_i2c_write(%struct.hw* %249, i32 %250, i32 38)
  %252 = load %struct.hw*, %struct.hw** %4, align 8
  %253 = load i32, i32* @CS4382_XC4, align 4
  %254 = call i32 @hw20k2_i2c_write(%struct.hw* %252, i32 %253, i32 38)
  br label %255

255:                                              ; preds = %242, %229
  br label %256

256:                                              ; preds = %255, %211
  store i32 0, i32* %3, align 4
  br label %260

257:                                              ; preds = %199, %33
  %258 = load %struct.hw*, %struct.hw** %4, align 8
  %259 = call i32 @hw20k2_i2c_uninit(%struct.hw* %258)
  store i32 -1, i32* %3, align 4
  br label %260

260:                                              ; preds = %257, %256
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hw_read_20kx(%struct.hw*, i32) #2

declare dso_local i32 @hw_write_20kx(%struct.hw*, i32, i32) #2

declare dso_local i32 @hw20k2_i2c_init(%struct.hw*, i32, i32, i32) #2

declare dso_local i32 @mdelay(i32) #2

declare dso_local i64 @hw20k2_i2c_read(%struct.hw*, i32, i32*) #2

declare dso_local i64 @memcmp(%struct.regs_cs4382*, %struct.regs_cs4382*, i32) #2

declare dso_local i32 @hw20k2_i2c_write(%struct.hw*, i32, i32) #2

declare dso_local i32 @hw20k2_i2c_uninit(%struct.hw*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
