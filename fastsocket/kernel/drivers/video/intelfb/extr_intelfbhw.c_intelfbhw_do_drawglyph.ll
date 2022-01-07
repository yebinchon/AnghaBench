; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_intelfbhw_do_drawglyph.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/intelfb/extr_intelfbhw.c_intelfbhw_do_drawglyph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { i32 }

@MAX_MONO_IMM_SIZE = common dso_local global i32 0, align 4
@XY_MONO_SRC_IMM_BLT_CMD = common dso_local global i32 0, align 4
@DW_LENGTH_MASK = common dso_local global i32 0, align 4
@SRC_ROP_GXCOPY = common dso_local global i32 0, align 4
@ROP_SHIFT = common dso_local global i32 0, align 4
@PITCH_SHIFT = common dso_local global i32 0, align 4
@WIDTH_SHIFT = common dso_local global i32 0, align 4
@HEIGHT_SHIFT = common dso_local global i32 0, align 4
@COLOR_DEPTH_8 = common dso_local global i32 0, align 4
@COLOR_DEPTH_16 = common dso_local global i32 0, align 4
@COLOR_DEPTH_32 = common dso_local global i32 0, align 4
@WRITE_ALPHA = common dso_local global i32 0, align 4
@WRITE_RGB = common dso_local global i32 0, align 4
@MI_NOOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intelfbhw_do_drawglyph(%struct.intelfb_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.intelfb_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store %struct.intelfb_info* %0, %struct.intelfb_info** %12, align 8
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32* %5, i32** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @ROUND_UP_TO(i32 %39, i32 16)
  %41 = sdiv i32 %40, 8
  store i32 %41, i32* %22, align 4
  %42 = load i32, i32* %22, align 4
  %43 = load i32, i32* %16, align 4
  %44 = mul nsw i32 %42, %43
  store i32 %44, i32* %22, align 4
  %45 = load i32, i32* %22, align 4
  %46 = load i32, i32* @MAX_MONO_IMM_SIZE, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %10
  store i32 0, i32* %11, align 4
  br label %207

49:                                               ; preds = %10
  %50 = load i32, i32* %22, align 4
  %51 = call i32 @ROUND_UP_TO(i32 %50, i32 4)
  %52 = sdiv i32 %51, 4
  store i32 %52, i32* %23, align 4
  %53 = load i32, i32* %23, align 4
  %54 = srem i32 %53, 2
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %24, align 4
  %58 = load i32, i32* @XY_MONO_SRC_IMM_BLT_CMD, align 4
  %59 = load i32, i32* @DW_LENGTH_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %23, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %25, align 4
  %63 = load i32, i32* @XY_MONO_SRC_IMM_BLT_CMD, align 4
  %64 = load i32, i32* @DW_LENGTH_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = load i32, i32* %25, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %26, align 4
  %69 = load %struct.intelfb_info*, %struct.intelfb_info** %12, align 8
  %70 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %27, align 4
  %72 = load i32, i32* @SRC_ROP_GXCOPY, align 4
  %73 = load i32, i32* @ROP_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* @PITCH_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = or i32 %74, %77
  store i32 %78, i32* %28, align 4
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %29, align 4
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %30, align 4
  %81 = load i32, i32* %18, align 4
  %82 = load i32, i32* @WIDTH_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* @HEIGHT_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = or i32 %83, %86
  store i32 %87, i32* %31, align 4
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* @WIDTH_SHIFT, align 4
  %92 = shl i32 %90, %91
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* @HEIGHT_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = or i32 %92, %97
  store i32 %98, i32* %32, align 4
  %99 = load i32, i32* %21, align 4
  switch i32 %99, label %117 [
    i32 8, label %100
    i32 16, label %104
    i32 32, label %108
  ]

100:                                              ; preds = %49
  %101 = load i32, i32* @COLOR_DEPTH_8, align 4
  %102 = load i32, i32* %28, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %28, align 4
  br label %117

104:                                              ; preds = %49
  %105 = load i32, i32* @COLOR_DEPTH_16, align 4
  %106 = load i32, i32* %28, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %28, align 4
  br label %117

108:                                              ; preds = %49
  %109 = load i32, i32* @COLOR_DEPTH_32, align 4
  %110 = load i32, i32* %28, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %28, align 4
  %112 = load i32, i32* @WRITE_ALPHA, align 4
  %113 = load i32, i32* @WRITE_RGB, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %26, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %26, align 4
  br label %117

117:                                              ; preds = %49, %108, %104, %100
  %118 = load i32, i32* %23, align 4
  %119 = add nsw i32 8, %118
  %120 = call i32 @START_RING(i32 %119)
  %121 = load i32, i32* %26, align 4
  %122 = call i32 @OUT_RING(i32 %121)
  %123 = load i32, i32* %28, align 4
  %124 = call i32 @OUT_RING(i32 %123)
  %125 = load i32, i32* %31, align 4
  %126 = call i32 @OUT_RING(i32 %125)
  %127 = load i32, i32* %32, align 4
  %128 = call i32 @OUT_RING(i32 %127)
  %129 = load i32, i32* %27, align 4
  %130 = call i32 @OUT_RING(i32 %129)
  %131 = load i32, i32* %29, align 4
  %132 = call i32 @OUT_RING(i32 %131)
  %133 = load i32, i32* %30, align 4
  %134 = call i32 @OUT_RING(i32 %133)
  store i32 0, i32* %35, align 4
  store i32 0, i32* %34, align 4
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @ROUND_UP_TO(i32 %135, i32 8)
  %137 = sdiv i32 %136, 8
  store i32 %137, i32* %36, align 4
  br label %138

138:                                              ; preds = %196, %117
  %139 = load i32, i32* %23, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %23, align 4
  %141 = icmp ne i32 %139, 0
  br i1 %141, label %142, label %199

142:                                              ; preds = %138
  store i32 0, i32* %33, align 4
  store i32 0, i32* %38, align 4
  br label %143

143:                                              ; preds = %193, %142
  %144 = load i32, i32* %38, align 4
  %145 = icmp slt i32 %144, 2
  br i1 %145, label %146, label %196

146:                                              ; preds = %143
  store i32 0, i32* %37, align 4
  br label %147

147:                                              ; preds = %177, %146
  %148 = load i32, i32* %37, align 4
  %149 = icmp slt i32 %148, 2
  br i1 %149, label %150, label %180

150:                                              ; preds = %147
  %151 = load i32, i32* %34, align 4
  %152 = load i32, i32* %36, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %157, label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %37, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %176

157:                                              ; preds = %154, %150
  %158 = load i32*, i32** %17, align 8
  %159 = load i32, i32* %35, align 4
  %160 = load i32, i32* %36, align 4
  %161 = mul nsw i32 %159, %160
  %162 = load i32, i32* %34, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %34, align 4
  %164 = add nsw i32 %161, %162
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %158, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %37, align 4
  %169 = load i32, i32* %38, align 4
  %170 = mul nsw i32 %169, 2
  %171 = add nsw i32 %168, %170
  %172 = mul nsw i32 %171, 8
  %173 = shl i32 %167, %172
  %174 = load i32, i32* %33, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %33, align 4
  br label %176

176:                                              ; preds = %157, %154
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %37, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %37, align 4
  br label %147

180:                                              ; preds = %147
  %181 = load i32, i32* %34, align 4
  %182 = load i32, i32* %36, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %192

184:                                              ; preds = %180
  %185 = load i32, i32* %35, align 4
  %186 = load i32, i32* %16, align 4
  %187 = sub nsw i32 %186, 1
  %188 = icmp ne i32 %185, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %184
  store i32 0, i32* %34, align 4
  %190 = load i32, i32* %35, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %35, align 4
  br label %192

192:                                              ; preds = %189, %184, %180
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %38, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %38, align 4
  br label %143

196:                                              ; preds = %143
  %197 = load i32, i32* %33, align 4
  %198 = call i32 @OUT_RING(i32 %197)
  br label %138

199:                                              ; preds = %138
  %200 = load i32, i32* %24, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i32, i32* @MI_NOOP, align 4
  %204 = call i32 @OUT_RING(i32 %203)
  br label %205

205:                                              ; preds = %202, %199
  %206 = call i32 (...) @ADVANCE_RING()
  store i32 1, i32* %11, align 4
  br label %207

207:                                              ; preds = %205, %48
  %208 = load i32, i32* %11, align 4
  ret i32 %208
}

declare dso_local i32 @ROUND_UP_TO(i32, i32) #1

declare dso_local i32 @START_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
