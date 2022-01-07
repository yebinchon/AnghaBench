; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c__setup_plane.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_dispc.c__setup_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@DISPC_GFX_ATTRIBUTES = common dso_local global i32 0, align 4
@DISPC_VID1_BASE = common dso_local global i32 0, align 4
@DISPC_VID_ATTRIBUTES = common dso_local global i32 0, align 4
@DISPC_VID2_BASE = common dso_local global i32 0, align 4
@DISPC_GFX_BA0 = common dso_local global i32 0, align 4
@DISPC_VID_BA0 = common dso_local global i32 0, align 4
@DISPC_GFX_POSITION = common dso_local global i32 0, align 4
@DISPC_VID_POSITION = common dso_local global i32 0, align 4
@DISPC_GFX_SIZE = common dso_local global i32 0, align 4
@DISPC_VID_PICTURE_SIZE = common dso_local global i32 0, align 4
@DISPC_GFX_ROW_INC = common dso_local global i32 0, align 4
@DISPC_VID_ROW_INC = common dso_local global i32 0, align 4
@DISPC_VID_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DISPC_RGB_16_BPP = common dso_local global i32 0, align 4
@DISPC_UYVY_422 = common dso_local global i32 0, align 4
@DISPC_YUV2_422 = common dso_local global i32 0, align 4
@DISPC_BURST_8x32 = common dso_local global i32 0, align 4
@dispc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)* @_setup_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_setup_plane(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  %20 = alloca [3 x i32], align 4
  %21 = alloca [3 x i32], align 4
  %22 = alloca [3 x i32], align 4
  %23 = alloca [3 x i32], align 4
  %24 = alloca [3 x i32], align 4
  %25 = alloca [3 x i32], align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  %35 = load i32, i32* @DISPC_GFX_ATTRIBUTES, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds i32, i32* %34, i64 1
  %37 = load i32, i32* @DISPC_VID1_BASE, align 4
  %38 = load i32, i32* @DISPC_VID_ATTRIBUTES, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %36, align 4
  %40 = getelementptr inbounds i32, i32* %36, i64 1
  %41 = load i32, i32* @DISPC_VID2_BASE, align 4
  %42 = load i32, i32* @DISPC_VID_ATTRIBUTES, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %40, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 0, i64 0
  %45 = load i32, i32* @DISPC_GFX_BA0, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds i32, i32* %44, i64 1
  %47 = load i32, i32* @DISPC_VID1_BASE, align 4
  %48 = load i32, i32* @DISPC_VID_BA0, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %46, align 4
  %50 = getelementptr inbounds i32, i32* %46, i64 1
  %51 = load i32, i32* @DISPC_VID2_BASE, align 4
  %52 = load i32, i32* @DISPC_VID_BA0, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %50, align 4
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %55 = load i32, i32* @DISPC_GFX_POSITION, align 4
  store i32 %55, i32* %54, align 4
  %56 = getelementptr inbounds i32, i32* %54, i64 1
  %57 = load i32, i32* @DISPC_VID1_BASE, align 4
  %58 = load i32, i32* @DISPC_VID_POSITION, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %56, align 4
  %60 = getelementptr inbounds i32, i32* %56, i64 1
  %61 = load i32, i32* @DISPC_VID2_BASE, align 4
  %62 = load i32, i32* @DISPC_VID_POSITION, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %60, align 4
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %65 = load i32, i32* @DISPC_GFX_SIZE, align 4
  store i32 %65, i32* %64, align 4
  %66 = getelementptr inbounds i32, i32* %64, i64 1
  %67 = load i32, i32* @DISPC_VID1_BASE, align 4
  %68 = load i32, i32* @DISPC_VID_PICTURE_SIZE, align 4
  %69 = add nsw i32 %67, %68
  store i32 %69, i32* %66, align 4
  %70 = getelementptr inbounds i32, i32* %66, i64 1
  %71 = load i32, i32* @DISPC_VID2_BASE, align 4
  %72 = load i32, i32* @DISPC_VID_PICTURE_SIZE, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %70, align 4
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 0
  %75 = load i32, i32* @DISPC_GFX_ROW_INC, align 4
  store i32 %75, i32* %74, align 4
  %76 = getelementptr inbounds i32, i32* %74, i64 1
  %77 = load i32, i32* @DISPC_VID1_BASE, align 4
  %78 = load i32, i32* @DISPC_VID_ROW_INC, align 4
  %79 = add nsw i32 %77, %78
  store i32 %79, i32* %76, align 4
  %80 = getelementptr inbounds i32, i32* %76, i64 1
  %81 = load i32, i32* @DISPC_VID2_BASE, align 4
  %82 = load i32, i32* @DISPC_VID_ROW_INC, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %80, align 4
  %84 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 0
  store i32 0, i32* %84, align 4
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* @DISPC_VID1_BASE, align 4
  %87 = load i32, i32* @DISPC_VID_SIZE, align 4
  %88 = add nsw i32 %86, %87
  store i32 %88, i32* %85, align 4
  %89 = getelementptr inbounds i32, i32* %85, i64 1
  %90 = load i32, i32* @DISPC_VID2_BASE, align 4
  %91 = load i32, i32* @DISPC_VID_SIZE, align 4
  %92 = add nsw i32 %90, %91
  store i32 %92, i32* %89, align 4
  store i32 0, i32* %32, align 4
  %93 = load i32, i32* %11, align 4
  switch i32 %93, label %96 [
    i32 130, label %94
    i32 129, label %95
    i32 128, label %95
  ]

94:                                               ; preds = %9
  store i32 6, i32* %27, align 4
  store i32 8, i32* %26, align 4
  br label %99

95:                                               ; preds = %9, %9
  store i32 14, i32* %27, align 4
  store i32 16, i32* %26, align 4
  store i32 1, i32* %32, align 4
  br label %99

96:                                               ; preds = %9
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %10, align 4
  br label %260

99:                                               ; preds = %95, %94
  %100 = load i32, i32* %12, align 4
  switch i32 %100, label %103 [
    i32 134, label %101
    i32 135, label %102
  ]

101:                                              ; preds = %99
  store i32 0, i32* %28, align 4
  br label %106

102:                                              ; preds = %99
  store i32 1, i32* %28, align 4
  br label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %10, align 4
  br label %260

106:                                              ; preds = %102, %101
  store i32 0, i32* %31, align 4
  %107 = load i32, i32* %19, align 4
  switch i32 %107, label %126 [
    i32 133, label %108
    i32 132, label %110
    i32 131, label %118
  ]

108:                                              ; preds = %106
  %109 = load i32, i32* @DISPC_RGB_16_BPP, align 4
  store i32 %109, i32* %29, align 4
  store i32 16, i32* %30, align 4
  br label %129

110:                                              ; preds = %106
  %111 = load i32, i32* %11, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %10, align 4
  br label %260

116:                                              ; preds = %110
  %117 = load i32, i32* @DISPC_UYVY_422, align 4
  store i32 %117, i32* %29, align 4
  store i32 1, i32* %31, align 4
  store i32 16, i32* %30, align 4
  br label %129

118:                                              ; preds = %106
  %119 = load i32, i32* %11, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %10, align 4
  br label %260

124:                                              ; preds = %118
  %125 = load i32, i32* @DISPC_YUV2_422, align 4
  store i32 %125, i32* %29, align 4
  store i32 1, i32* %31, align 4
  store i32 16, i32* %30, align 4
  br label %129

126:                                              ; preds = %106
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %10, align 4
  br label %260

129:                                              ; preds = %124, %116, %108
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @dispc_read_reg(i32 %133)
  store i32 %134, i32* %33, align 4
  %135 = load i32, i32* %33, align 4
  %136 = and i32 %135, -31
  store i32 %136, i32* %33, align 4
  %137 = load i32, i32* %29, align 4
  %138 = shl i32 %137, 1
  %139 = load i32, i32* %33, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %33, align 4
  %141 = load i32, i32* %33, align 4
  %142 = and i32 %141, -513
  store i32 %142, i32* %33, align 4
  %143 = load i32, i32* %31, align 4
  %144 = shl i32 %143, 9
  %145 = load i32, i32* %33, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %33, align 4
  %147 = load i32, i32* %27, align 4
  %148 = shl i32 3, %147
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %33, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %33, align 4
  %152 = load i32, i32* @DISPC_BURST_8x32, align 4
  %153 = load i32, i32* %27, align 4
  %154 = shl i32 %152, %153
  %155 = load i32, i32* %33, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %33, align 4
  %157 = load i32, i32* %26, align 4
  %158 = shl i32 1, %157
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %33, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %33, align 4
  %162 = load i32, i32* %28, align 4
  %163 = load i32, i32* %26, align 4
  %164 = shl i32 %162, %163
  %165 = load i32, i32* %33, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %33, align 4
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %33, align 4
  %172 = call i32 @dispc_write_reg(i32 %170, i32 %171)
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %13, align 4
  %178 = call i32 @dispc_write_reg(i32 %176, i32 %177)
  %179 = load i32, i32* %11, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @FLD_MASK(i32 16, i32 11)
  %184 = call i32 @FLD_MASK(i32 0, i32 11)
  %185 = or i32 %183, %184
  %186 = load i32, i32* %16, align 4
  %187 = shl i32 %186, 16
  %188 = load i32, i32* %15, align 4
  %189 = or i32 %187, %188
  %190 = call i32 @MOD_REG_FLD(i32 %182, i32 %185, i32 %189)
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @FLD_MASK(i32 16, i32 11)
  %196 = call i32 @FLD_MASK(i32 0, i32 11)
  %197 = or i32 %195, %196
  %198 = load i32, i32* %18, align 4
  %199 = sub nsw i32 %198, 1
  %200 = shl i32 %199, 16
  %201 = load i32, i32* %17, align 4
  %202 = sub nsw i32 %201, 1
  %203 = or i32 %200, %202
  %204 = call i32 @MOD_REG_FLD(i32 %194, i32 %197, i32 %203)
  %205 = load i32, i32* %32, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %241

207:                                              ; preds = %129
  %208 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 1), align 8
  %209 = load i32, i32* %11, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %224, label %214

214:                                              ; preds = %207
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @FLD_MASK(i32 16, i32 11)
  %220 = load i32, i32* %18, align 4
  %221 = sub nsw i32 %220, 1
  %222 = shl i32 %221, 16
  %223 = call i32 @MOD_REG_FLD(i32 %218, i32 %219, i32 %222)
  br label %224

224:                                              ; preds = %214, %207
  %225 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %240, label %231

231:                                              ; preds = %224
  %232 = load i32, i32* %11, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @FLD_MASK(i32 0, i32 11)
  %237 = load i32, i32* %17, align 4
  %238 = sub nsw i32 %237, 1
  %239 = call i32 @MOD_REG_FLD(i32 %235, i32 %236, i32 %238)
  br label %240

240:                                              ; preds = %231, %224
  br label %241

241:                                              ; preds = %240, %129
  %242 = load i32, i32* %11, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %14, align 4
  %247 = load i32, i32* %17, align 4
  %248 = sub nsw i32 %246, %247
  %249 = load i32, i32* %30, align 4
  %250 = mul nsw i32 %248, %249
  %251 = sdiv i32 %250, 8
  %252 = add nsw i32 %251, 1
  %253 = call i32 @dispc_write_reg(i32 %245, i32 %252)
  %254 = load i32, i32* %18, align 4
  %255 = load i32, i32* %14, align 4
  %256 = mul nsw i32 %254, %255
  %257 = load i32, i32* %30, align 4
  %258 = mul nsw i32 %256, %257
  %259 = sdiv i32 %258, 8
  store i32 %259, i32* %10, align 4
  br label %260

260:                                              ; preds = %241, %126, %121, %113, %103, %96
  %261 = load i32, i32* %10, align 4
  ret i32 %261
}

declare dso_local i32 @dispc_read_reg(i32) #1

declare dso_local i32 @dispc_write_reg(i32, i32) #1

declare dso_local i32 @MOD_REG_FLD(i32, i32, i32) #1

declare dso_local i32 @FLD_MASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
