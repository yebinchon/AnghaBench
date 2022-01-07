; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/echo/extr_echo.c_oslec_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/echo/extr_echo.c_oslec_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oslec_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64* }

@ECHO_CAN_USE_RX_HPF = common dso_local global i32 0, align 4
@DC_LOG2BETA = common dso_local global i32 0, align 4
@MIN_TX_POWER_FOR_ADAPTION = common dso_local global i32 0, align 4
@MIN_RX_POWER_FOR_ADAPTION = common dso_local global i32 0, align 4
@DTD_HANGOVER = common dso_local global i64 0, align 8
@ECHO_CAN_USE_ADAPTION = common dso_local global i32 0, align 4
@ECHO_CAN_USE_NLP = common dso_local global i32 0, align 4
@ECHO_CAN_USE_CNG = common dso_local global i32 0, align 4
@ECHO_CAN_USE_CLIP = common dso_local global i32 0, align 4
@ECHO_CAN_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oslec_update(%struct.oslec_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.oslec_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.oslec_state* %0, %struct.oslec_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %18 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %21 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = ashr i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 1
  store i32 %25, i32* %6, align 4
  %26 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %27 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ECHO_CAN_USE_RX_HPF, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %71

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 %33, 15
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = ashr i32 %35, 4
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %40 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DC_LOG2BETA, align 4
  %43 = ashr i32 %41, %42
  %44 = sub nsw i32 0, %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %44, %45
  %47 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %48 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %46, %49
  %51 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %52 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %56 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 15
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp sgt i32 %59, 16383
  br i1 %60, label %61, label %62

61:                                               ; preds = %32
  store i32 16383, i32* %10, align 4
  br label %62

62:                                               ; preds = %61, %32
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %63, -16383
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 -16383, i32* %10, align 4
  br label %66

66:                                               ; preds = %65, %62
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %70 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %66, %3
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = mul nsw i32 %72, %73
  store i32 %74, i32* %11, align 4
  %75 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %76 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %75, i32 0, i32 31
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i64*, i64** %77, align 8
  %79 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %80 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %79, i32 0, i32 31
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i64, i64* %78, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %87 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %86, i32 0, i32 31
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i64*, i64** %88, align 8
  %90 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %91 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %90, i32 0, i32 31
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i64, i64* %89, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = mul nsw i32 %85, %96
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %102 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 1
  %105 = shl i32 1, %104
  %106 = add nsw i32 %100, %105
  %107 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %108 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = ashr i32 %106, %109
  %111 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %112 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %116 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %71
  %120 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %121 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %120, i32 0, i32 5
  store i32 0, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %71
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @abs(i32 %123) #3
  %125 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %126 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %124, %127
  %129 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %130 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, %128
  store i32 %132, i32* %130, align 4
  %133 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %134 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 16
  %137 = ashr i32 %136, 5
  %138 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %139 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %138, i32 0, i32 8
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @abs(i32 %140) #3
  %142 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %143 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %142, i32 0, i32 10
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 %141, %144
  %146 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %147 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %146, i32 0, i32 9
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %151 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %150, i32 0, i32 9
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 16
  %154 = ashr i32 %153, 5
  %155 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %156 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %155, i32 0, i32 10
  store i32 %154, i32* %156, align 8
  %157 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %158 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %157, i32 0, i32 28
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %163 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %162, i32 0, i32 31
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 1
  store i32 %161, i32* %164, align 8
  %165 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %166 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %165, i32 0, i32 31
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @fir16(%struct.TYPE_2__* %166, i32 %167)
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* %7, align 4
  %171 = sub nsw i32 %169, %170
  %172 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %173 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %172, i32 0, i32 11
  store i32 %171, i32* %173, align 4
  %174 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %175 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %174, i32 0, i32 11
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @abs(i32 %176) #3
  %178 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %179 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %178, i32 0, i32 13
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %177, %180
  %182 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %183 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %182, i32 0, i32 12
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %184, %181
  store i32 %185, i32* %183, align 8
  %186 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %187 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %186, i32 0, i32 12
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, 16
  %190 = ashr i32 %189, 5
  %191 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %192 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %191, i32 0, i32 13
  store i32 %190, i32* %192, align 4
  %193 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %194 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %193, i32 0, i32 30
  %195 = load i32, i32* %5, align 4
  %196 = call i32 @fir16(%struct.TYPE_2__* %194, i32 %195)
  store i32 %196, i32* %7, align 4
  %197 = load i32, i32* %6, align 4
  %198 = load i32, i32* %7, align 4
  %199 = sub nsw i32 %197, %198
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = call i32 @abs(i32 %200) #3
  %202 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %203 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %202, i32 0, i32 15
  %204 = load i32, i32* %203, align 4
  %205 = sub nsw i32 %201, %204
  %206 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %207 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %206, i32 0, i32 14
  %208 = load i32, i32* %207, align 8
  %209 = add nsw i32 %208, %205
  store i32 %209, i32* %207, align 8
  %210 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %211 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %210, i32 0, i32 14
  %212 = load i32, i32* %211, align 8
  %213 = add nsw i32 %212, 16
  %214 = ashr i32 %213, 5
  %215 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %216 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %215, i32 0, i32 15
  store i32 %214, i32* %216, align 4
  %217 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %218 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %217, i32 0, i32 29
  store i64 0, i64* %218, align 8
  %219 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %220 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %219, i32 0, i32 16
  store i32 0, i32* %220, align 8
  %221 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %222 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %221, i32 0, i32 17
  %223 = load i64, i64* %222, align 8
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %246

225:                                              ; preds = %122
  %226 = load i32, i32* @MIN_TX_POWER_FOR_ADAPTION, align 4
  %227 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %228 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %226, %229
  store i32 %230, i32* %13, align 4
  %231 = load i32, i32* %13, align 4
  %232 = call i32 @top_bit(i32 %231)
  %233 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %234 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 8
  %236 = add nsw i32 %232, %235
  store i32 %236, i32* %14, align 4
  %237 = load i32, i32* %14, align 4
  %238 = sub nsw i32 28, %237
  store i32 %238, i32* %15, align 4
  %239 = load i32, i32* %15, align 4
  %240 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %241 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %240, i32 0, i32 16
  store i32 %239, i32* %241, align 8
  %242 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* %15, align 4
  %245 = call i32 @lms_adapt_bg(%struct.oslec_state* %242, i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %225, %122
  %247 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %248 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %247, i32 0, i32 18
  store i32 0, i32* %248, align 8
  %249 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %250 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %249, i32 0, i32 10
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @MIN_RX_POWER_FOR_ADAPTION, align 4
  %253 = icmp sgt i32 %251, %252
  br i1 %253, label %254, label %266

254:                                              ; preds = %246
  %255 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %256 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %255, i32 0, i32 10
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %259 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %258, i32 0, i32 8
  %260 = load i32, i32* %259, align 8
  %261 = icmp sgt i32 %257, %260
  br i1 %261, label %262, label %266

262:                                              ; preds = %254
  %263 = load i64, i64* @DTD_HANGOVER, align 8
  %264 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %265 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %264, i32 0, i32 17
  store i64 %263, i64* %265, align 8
  br label %266

266:                                              ; preds = %262, %254, %246
  %267 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %268 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %267, i32 0, i32 17
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %266
  %272 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %273 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %272, i32 0, i32 17
  %274 = load i64, i64* %273, align 8
  %275 = add nsw i64 %274, -1
  store i64 %275, i64* %273, align 8
  br label %276

276:                                              ; preds = %271, %266
  %277 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %278 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @ECHO_CAN_USE_ADAPTION, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %338

283:                                              ; preds = %276
  %284 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %285 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %284, i32 0, i32 17
  %286 = load i64, i64* %285, align 8
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %338

288:                                              ; preds = %283
  %289 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %290 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %289, i32 0, i32 15
  %291 = load i32, i32* %290, align 4
  %292 = mul nsw i32 8, %291
  %293 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %294 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %293, i32 0, i32 13
  %295 = load i32, i32* %294, align 4
  %296 = mul nsw i32 7, %295
  %297 = icmp slt i32 %292, %296
  br i1 %297, label %298, label %338

298:                                              ; preds = %288
  %299 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %300 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %299, i32 0, i32 15
  %301 = load i32, i32* %300, align 4
  %302 = mul nsw i32 8, %301
  %303 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %304 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %303, i32 0, i32 8
  %305 = load i32, i32* %304, align 8
  %306 = icmp slt i32 %302, %305
  br i1 %306, label %307, label %338

307:                                              ; preds = %298
  %308 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %309 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %308, i32 0, i32 19
  %310 = load i32, i32* %309, align 4
  %311 = icmp eq i32 %310, 6
  br i1 %311, label %312, label %332

312:                                              ; preds = %307
  %313 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %314 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %313, i32 0, i32 18
  store i32 1, i32* %314, align 8
  %315 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %316 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %315, i32 0, i32 28
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 0
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %321 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %320, i32 0, i32 28
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 1
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %326 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %325, i32 0, i32 20
  %327 = load i32, i32* %326, align 8
  %328 = sext i32 %327 to i64
  %329 = mul i64 %328, 4
  %330 = trunc i64 %329 to i32
  %331 = call i32 @memcpy(i32 %319, i32 %324, i32 %330)
  br label %337

332:                                              ; preds = %307
  %333 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %334 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %333, i32 0, i32 19
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %334, align 4
  br label %337

337:                                              ; preds = %332, %312
  br label %341

338:                                              ; preds = %298, %288, %283, %276
  %339 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %340 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %339, i32 0, i32 19
  store i32 0, i32* %340, align 4
  br label %341

341:                                              ; preds = %338, %337
  %342 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %343 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %342, i32 0, i32 11
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %346 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %345, i32 0, i32 21
  store i32 %344, i32* %346, align 4
  %347 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %348 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @ECHO_CAN_USE_NLP, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %476

353:                                              ; preds = %341
  %354 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %355 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %354, i32 0, i32 13
  %356 = load i32, i32* %355, align 4
  %357 = mul nsw i32 16, %356
  %358 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %359 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %358, i32 0, i32 8
  %360 = load i32, i32* %359, align 8
  %361 = icmp slt i32 %357, %360
  br i1 %361, label %362, label %449

362:                                              ; preds = %353
  %363 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %364 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %363, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @ECHO_CAN_USE_CNG, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %406

369:                                              ; preds = %362
  %370 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %371 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %370, i32 0, i32 23
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %374 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %373, i32 0, i32 22
  store i32 %372, i32* %374, align 8
  %375 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %376 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %375, i32 0, i32 24
  %377 = load i32, i32* %376, align 8
  %378 = mul i32 1664525, %377
  %379 = add i32 %378, 1013904223
  %380 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %381 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %380, i32 0, i32 24
  store i32 %379, i32* %381, align 8
  %382 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %383 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %382, i32 0, i32 24
  %384 = load i32, i32* %383, align 8
  %385 = and i32 %384, 65535
  %386 = sub i32 %385, 32768
  %387 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %388 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %387, i32 0, i32 25
  %389 = load i32, i32* %388, align 4
  %390 = mul nsw i32 5, %389
  %391 = add i32 %386, %390
  %392 = lshr i32 %391, 3
  %393 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %394 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %393, i32 0, i32 25
  store i32 %392, i32* %394, align 4
  %395 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %396 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %395, i32 0, i32 25
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %399 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %398, i32 0, i32 22
  %400 = load i32, i32* %399, align 8
  %401 = mul nsw i32 %397, %400
  %402 = mul nsw i32 %401, 8
  %403 = ashr i32 %402, 14
  %404 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %405 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %404, i32 0, i32 21
  store i32 %403, i32* %405, align 4
  br label %448

406:                                              ; preds = %362
  %407 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %408 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 8
  %410 = load i32, i32* @ECHO_CAN_USE_CLIP, align 4
  %411 = and i32 %409, %410
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %444

413:                                              ; preds = %406
  %414 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %415 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %414, i32 0, i32 21
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %418 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %417, i32 0, i32 23
  %419 = load i32, i32* %418, align 4
  %420 = icmp sgt i32 %416, %419
  br i1 %420, label %421, label %427

421:                                              ; preds = %413
  %422 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %423 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %422, i32 0, i32 23
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %426 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %425, i32 0, i32 21
  store i32 %424, i32* %426, align 4
  br label %427

427:                                              ; preds = %421, %413
  %428 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %429 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %428, i32 0, i32 21
  %430 = load i32, i32* %429, align 4
  %431 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %432 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %431, i32 0, i32 23
  %433 = load i32, i32* %432, align 4
  %434 = sub nsw i32 0, %433
  %435 = icmp slt i32 %430, %434
  br i1 %435, label %436, label %443

436:                                              ; preds = %427
  %437 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %438 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %437, i32 0, i32 23
  %439 = load i32, i32* %438, align 4
  %440 = sub nsw i32 0, %439
  %441 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %442 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %441, i32 0, i32 21
  store i32 %440, i32* %442, align 4
  br label %443

443:                                              ; preds = %436, %427
  br label %447

444:                                              ; preds = %406
  %445 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %446 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %445, i32 0, i32 21
  store i32 0, i32* %446, align 4
  br label %447

447:                                              ; preds = %444, %443
  br label %448

448:                                              ; preds = %447, %369
  br label %475

449:                                              ; preds = %353
  %450 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %451 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %450, i32 0, i32 13
  %452 = load i32, i32* %451, align 4
  %453 = icmp slt i32 %452, 40
  br i1 %453, label %454, label %474

454:                                              ; preds = %449
  %455 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %456 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %455, i32 0, i32 11
  %457 = load i32, i32* %456, align 4
  %458 = call i32 @abs(i32 %457) #3
  %459 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %460 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %459, i32 0, i32 23
  %461 = load i32, i32* %460, align 4
  %462 = sub nsw i32 %458, %461
  %463 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %464 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %463, i32 0, i32 26
  %465 = load i32, i32* %464, align 8
  %466 = add nsw i32 %465, %462
  store i32 %466, i32* %464, align 8
  %467 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %468 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %467, i32 0, i32 26
  %469 = load i32, i32* %468, align 8
  %470 = add nsw i32 %469, 2048
  %471 = ashr i32 %470, 12
  %472 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %473 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %472, i32 0, i32 23
  store i32 %471, i32* %473, align 4
  br label %474

474:                                              ; preds = %454, %449
  br label %475

475:                                              ; preds = %474, %448
  br label %476

476:                                              ; preds = %475, %341
  %477 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %478 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %477, i32 0, i32 27
  %479 = load i32, i32* %478, align 4
  %480 = icmp sle i32 %479, 0
  br i1 %480, label %481, label %487

481:                                              ; preds = %476
  %482 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %483 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %482, i32 0, i32 20
  %484 = load i32, i32* %483, align 8
  %485 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %486 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %485, i32 0, i32 27
  store i32 %484, i32* %486, align 4
  br label %487

487:                                              ; preds = %481, %476
  %488 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %489 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %488, i32 0, i32 27
  %490 = load i32, i32* %489, align 4
  %491 = add nsw i32 %490, -1
  store i32 %491, i32* %489, align 4
  %492 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %493 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %492, i32 0, i32 2
  %494 = load i32, i32* %493, align 8
  %495 = load i32, i32* @ECHO_CAN_DISABLE, align 4
  %496 = and i32 %494, %495
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %502

498:                                              ; preds = %487
  %499 = load i32, i32* %6, align 4
  %500 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %501 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %500, i32 0, i32 21
  store i32 %499, i32* %501, align 4
  br label %502

502:                                              ; preds = %498, %487
  %503 = load %struct.oslec_state*, %struct.oslec_state** %4, align 8
  %504 = getelementptr inbounds %struct.oslec_state, %struct.oslec_state* %503, i32 0, i32 21
  %505 = load i32, i32* %504, align 4
  %506 = shl i32 %505, 1
  ret i32 %506
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @fir16(%struct.TYPE_2__*, i32) #2

declare dso_local i32 @top_bit(i32) #2

declare dso_local i32 @lms_adapt_bg(%struct.oslec_state*, i32, i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
