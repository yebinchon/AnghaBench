; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_synaptics_i2c_rmi.c_compute_areas.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/extr_synaptics_i2c_rmi.c_compute_areas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.synaptics_ts_data = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32 }
%struct.synaptics_i2c_rmi_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SYNAPTICS_SWAP_XY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"synaptics_ts_probe: max_x %d, max_y %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"synaptics_ts_probe: inactive_x %d %d, inactive_y %d %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"synaptics_ts_probe: snap_x %d-%d %d-%d, snap_y %d-%d %d-%d\0A\00", align 1
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ABS_TOOL_WIDTH = common dso_local global i32 0, align 4
@ABS_HAT0X = common dso_local global i32 0, align 4
@ABS_HAT0Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.synaptics_ts_data*, %struct.synaptics_i2c_rmi_platform_data*, i32, i32)* @compute_areas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_areas(%struct.synaptics_ts_data* %0, %struct.synaptics_i2c_rmi_platform_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.synaptics_ts_data*, align 8
  %6 = alloca %struct.synaptics_i2c_rmi_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.synaptics_ts_data* %0, %struct.synaptics_ts_data** %5, align 8
  store %struct.synaptics_i2c_rmi_platform_data* %1, %struct.synaptics_i2c_rmi_platform_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %26 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %5, align 8
  %27 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @SYNAPTICS_SWAP_XY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %25, align 4
  %35 = load %struct.synaptics_i2c_rmi_platform_data*, %struct.synaptics_i2c_rmi_platform_data** %6, align 8
  %36 = getelementptr inbounds %struct.synaptics_i2c_rmi_platform_data, %struct.synaptics_i2c_rmi_platform_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %9, align 4
  %38 = load %struct.synaptics_i2c_rmi_platform_data*, %struct.synaptics_i2c_rmi_platform_data** %6, align 8
  %39 = getelementptr inbounds %struct.synaptics_i2c_rmi_platform_data, %struct.synaptics_i2c_rmi_platform_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load %struct.synaptics_i2c_rmi_platform_data*, %struct.synaptics_i2c_rmi_platform_data** %6, align 8
  %42 = getelementptr inbounds %struct.synaptics_i2c_rmi_platform_data, %struct.synaptics_i2c_rmi_platform_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = load %struct.synaptics_i2c_rmi_platform_data*, %struct.synaptics_i2c_rmi_platform_data** %6, align 8
  %45 = getelementptr inbounds %struct.synaptics_i2c_rmi_platform_data, %struct.synaptics_i2c_rmi_platform_data* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = load %struct.synaptics_i2c_rmi_platform_data*, %struct.synaptics_i2c_rmi_platform_data** %6, align 8
  %48 = getelementptr inbounds %struct.synaptics_i2c_rmi_platform_data, %struct.synaptics_i2c_rmi_platform_data* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.synaptics_i2c_rmi_platform_data*, %struct.synaptics_i2c_rmi_platform_data** %6, align 8
  %51 = getelementptr inbounds %struct.synaptics_i2c_rmi_platform_data, %struct.synaptics_i2c_rmi_platform_data* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  %53 = load %struct.synaptics_i2c_rmi_platform_data*, %struct.synaptics_i2c_rmi_platform_data** %6, align 8
  %54 = getelementptr inbounds %struct.synaptics_i2c_rmi_platform_data, %struct.synaptics_i2c_rmi_platform_data* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %15, align 4
  %56 = load %struct.synaptics_i2c_rmi_platform_data*, %struct.synaptics_i2c_rmi_platform_data** %6, align 8
  %57 = getelementptr inbounds %struct.synaptics_i2c_rmi_platform_data, %struct.synaptics_i2c_rmi_platform_data* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %16, align 4
  %59 = load %struct.synaptics_i2c_rmi_platform_data*, %struct.synaptics_i2c_rmi_platform_data** %6, align 8
  %60 = getelementptr inbounds %struct.synaptics_i2c_rmi_platform_data, %struct.synaptics_i2c_rmi_platform_data* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %17, align 4
  %62 = load %struct.synaptics_i2c_rmi_platform_data*, %struct.synaptics_i2c_rmi_platform_data** %6, align 8
  %63 = getelementptr inbounds %struct.synaptics_i2c_rmi_platform_data, %struct.synaptics_i2c_rmi_platform_data* %62, i32 0, i32 9
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %18, align 4
  %65 = load %struct.synaptics_i2c_rmi_platform_data*, %struct.synaptics_i2c_rmi_platform_data** %6, align 8
  %66 = getelementptr inbounds %struct.synaptics_i2c_rmi_platform_data, %struct.synaptics_i2c_rmi_platform_data* %65, i32 0, i32 10
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %19, align 4
  %68 = load %struct.synaptics_i2c_rmi_platform_data*, %struct.synaptics_i2c_rmi_platform_data** %6, align 8
  %69 = getelementptr inbounds %struct.synaptics_i2c_rmi_platform_data, %struct.synaptics_i2c_rmi_platform_data* %68, i32 0, i32 11
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %20, align 4
  %71 = load %struct.synaptics_i2c_rmi_platform_data*, %struct.synaptics_i2c_rmi_platform_data** %6, align 8
  %72 = getelementptr inbounds %struct.synaptics_i2c_rmi_platform_data, %struct.synaptics_i2c_rmi_platform_data* %71, i32 0, i32 12
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %21, align 4
  %74 = load %struct.synaptics_i2c_rmi_platform_data*, %struct.synaptics_i2c_rmi_platform_data** %6, align 8
  %75 = getelementptr inbounds %struct.synaptics_i2c_rmi_platform_data, %struct.synaptics_i2c_rmi_platform_data* %74, i32 0, i32 13
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %22, align 4
  %77 = load %struct.synaptics_i2c_rmi_platform_data*, %struct.synaptics_i2c_rmi_platform_data** %6, align 8
  %78 = getelementptr inbounds %struct.synaptics_i2c_rmi_platform_data, %struct.synaptics_i2c_rmi_platform_data* %77, i32 0, i32 14
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %23, align 4
  %80 = load %struct.synaptics_i2c_rmi_platform_data*, %struct.synaptics_i2c_rmi_platform_data** %6, align 8
  %81 = getelementptr inbounds %struct.synaptics_i2c_rmi_platform_data, %struct.synaptics_i2c_rmi_platform_data* %80, i32 0, i32 15
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %24, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %7, align 4
  %85 = mul nsw i32 %83, %84
  %86 = sdiv i32 %85, 65536
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %7, align 4
  %89 = mul nsw i32 %87, %88
  %90 = sdiv i32 %89, 65536
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %8, align 4
  %93 = mul nsw i32 %91, %92
  %94 = sdiv i32 %93, 65536
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %8, align 4
  %97 = mul nsw i32 %95, %96
  %98 = sdiv i32 %97, 65536
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %7, align 4
  %101 = mul nsw i32 %99, %100
  %102 = sdiv i32 %101, 65536
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %7, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sdiv i32 %105, 65536
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* %7, align 4
  %109 = mul nsw i32 %107, %108
  %110 = sdiv i32 %109, 65536
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* %7, align 4
  %113 = mul nsw i32 %111, %112
  %114 = sdiv i32 %113, 65536
  store i32 %114, i32* %16, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %8, align 4
  %117 = mul nsw i32 %115, %116
  %118 = sdiv i32 %117, 65536
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* %18, align 4
  %120 = load i32, i32* %8, align 4
  %121 = mul nsw i32 %119, %120
  %122 = sdiv i32 %121, 65536
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %19, align 4
  %124 = load i32, i32* %8, align 4
  %125 = mul nsw i32 %123, %124
  %126 = sdiv i32 %125, 65536
  store i32 %126, i32* %19, align 4
  %127 = load i32, i32* %20, align 4
  %128 = load i32, i32* %8, align 4
  %129 = mul nsw i32 %127, %128
  %130 = sdiv i32 %129, 65536
  store i32 %130, i32* %20, align 4
  %131 = load i32, i32* %21, align 4
  %132 = load i32, i32* %7, align 4
  %133 = mul nsw i32 %131, %132
  %134 = sdiv i32 %133, 65536
  store i32 %134, i32* %21, align 4
  %135 = load i32, i32* %22, align 4
  %136 = load i32, i32* %8, align 4
  %137 = mul nsw i32 %135, %136
  %138 = sdiv i32 %137, 65536
  store i32 %138, i32* %22, align 4
  %139 = load i32, i32* %9, align 4
  %140 = sub nsw i32 0, %139
  %141 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %5, align 8
  %142 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %25, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  store i32 %140, i32* %146, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %147, %148
  %150 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %5, align 8
  %151 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %25, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32 %149, i32* %155, align 4
  %156 = load i32, i32* %11, align 4
  %157 = sub nsw i32 0, %156
  %158 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %5, align 8
  %159 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %25, align 4
  %162 = icmp ne i32 %161, 0
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %160, i64 %165
  store i32 %157, i32* %166, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %167, %168
  %170 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %5, align 8
  %171 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %25, align 4
  %174 = icmp ne i32 %173, 0
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %172, i64 %177
  store i32 %169, i32* %178, align 4
  %179 = load i32, i32* %13, align 4
  %180 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %5, align 8
  %181 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %25, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %179, i32* %185, align 4
  %186 = load i32, i32* %14, align 4
  %187 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %5, align 8
  %188 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %187, i32 0, i32 4
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %25, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  store i32 %186, i32* %192, align 4
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* %15, align 4
  %195 = sub nsw i32 %193, %194
  %196 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %5, align 8
  %197 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %196, i32 0, i32 5
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %25, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  store i32 %195, i32* %201, align 4
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* %16, align 4
  %204 = sub nsw i32 %202, %203
  %205 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %5, align 8
  %206 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %205, i32 0, i32 6
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %25, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  store i32 %204, i32* %210, align 4
  %211 = load i32, i32* %17, align 4
  %212 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %5, align 8
  %213 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %212, i32 0, i32 3
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %25, align 4
  %216 = icmp ne i32 %215, 0
  %217 = xor i1 %216, true
  %218 = zext i1 %217 to i32
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %214, i64 %219
  store i32 %211, i32* %220, align 4
  %221 = load i32, i32* %18, align 4
  %222 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %5, align 8
  %223 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %222, i32 0, i32 4
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %25, align 4
  %226 = icmp ne i32 %225, 0
  %227 = xor i1 %226, true
  %228 = zext i1 %227 to i32
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %224, i64 %229
  store i32 %221, i32* %230, align 4
  %231 = load i32, i32* %8, align 4
  %232 = load i32, i32* %19, align 4
  %233 = sub nsw i32 %231, %232
  %234 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %5, align 8
  %235 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %234, i32 0, i32 5
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %25, align 4
  %238 = icmp ne i32 %237, 0
  %239 = xor i1 %238, true
  %240 = zext i1 %239 to i32
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %236, i64 %241
  store i32 %233, i32* %242, align 4
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* %20, align 4
  %245 = sub nsw i32 %243, %244
  %246 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %5, align 8
  %247 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %246, i32 0, i32 6
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %25, align 4
  %250 = icmp ne i32 %249, 0
  %251 = xor i1 %250, true
  %252 = zext i1 %251 to i32
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %248, i64 %253
  store i32 %245, i32* %254, align 4
  %255 = load i32, i32* %7, align 4
  %256 = load i32, i32* %8, align 4
  %257 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %255, i32 %256)
  %258 = load i32, i32* %9, align 4
  %259 = load i32, i32* %10, align 4
  %260 = load i32, i32* %11, align 4
  %261 = load i32, i32* %12, align 4
  %262 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %258, i32 %259, i32 %260, i32 %261)
  %263 = load i32, i32* %13, align 4
  %264 = load i32, i32* %14, align 4
  %265 = load i32, i32* %15, align 4
  %266 = load i32, i32* %16, align 4
  %267 = load i32, i32* %17, align 4
  %268 = load i32, i32* %18, align 4
  %269 = load i32, i32* %19, align 4
  %270 = load i32, i32* %20, align 4
  %271 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %263, i32 %264, i32 %265, i32 %266, i32 %267, i32 %268, i32 %269, i32 %270)
  %272 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %5, align 8
  %273 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %272, i32 0, i32 7
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @ABS_X, align 4
  %276 = load i32, i32* %9, align 4
  %277 = sub nsw i32 0, %276
  %278 = load i32, i32* %7, align 4
  %279 = load i32, i32* %10, align 4
  %280 = add nsw i32 %278, %279
  %281 = load i32, i32* %21, align 4
  %282 = call i32 @input_set_abs_params(i32 %274, i32 %275, i32 %277, i32 %280, i32 %281, i32 0)
  %283 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %5, align 8
  %284 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %283, i32 0, i32 7
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @ABS_Y, align 4
  %287 = load i32, i32* %11, align 4
  %288 = sub nsw i32 0, %287
  %289 = load i32, i32* %8, align 4
  %290 = load i32, i32* %12, align 4
  %291 = add nsw i32 %289, %290
  %292 = load i32, i32* %22, align 4
  %293 = call i32 @input_set_abs_params(i32 %285, i32 %286, i32 %288, i32 %291, i32 %292, i32 0)
  %294 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %5, align 8
  %295 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %294, i32 0, i32 7
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @ABS_PRESSURE, align 4
  %298 = load i32, i32* %23, align 4
  %299 = call i32 @input_set_abs_params(i32 %296, i32 %297, i32 0, i32 255, i32 %298, i32 0)
  %300 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %5, align 8
  %301 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 8
  %303 = load i32, i32* @ABS_TOOL_WIDTH, align 4
  %304 = load i32, i32* %24, align 4
  %305 = call i32 @input_set_abs_params(i32 %302, i32 %303, i32 0, i32 15, i32 %304, i32 0)
  %306 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %5, align 8
  %307 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %306, i32 0, i32 7
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @ABS_HAT0X, align 4
  %310 = load i32, i32* %9, align 4
  %311 = sub nsw i32 0, %310
  %312 = load i32, i32* %7, align 4
  %313 = load i32, i32* %10, align 4
  %314 = add nsw i32 %312, %313
  %315 = load i32, i32* %21, align 4
  %316 = call i32 @input_set_abs_params(i32 %308, i32 %309, i32 %311, i32 %314, i32 %315, i32 0)
  %317 = load %struct.synaptics_ts_data*, %struct.synaptics_ts_data** %5, align 8
  %318 = getelementptr inbounds %struct.synaptics_ts_data, %struct.synaptics_ts_data* %317, i32 0, i32 7
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @ABS_HAT0Y, align 4
  %321 = load i32, i32* %11, align 4
  %322 = sub nsw i32 0, %321
  %323 = load i32, i32* %8, align 4
  %324 = load i32, i32* %12, align 4
  %325 = add nsw i32 %323, %324
  %326 = load i32, i32* %22, align 4
  %327 = call i32 @input_set_abs_params(i32 %319, i32 %320, i32 %322, i32 %325, i32 %326, i32 0)
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32, ...) #1

declare dso_local i32 @input_set_abs_params(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
