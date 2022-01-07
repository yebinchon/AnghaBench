; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_gbefb.c_gbefb_set_par.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_gbefb.c_gbefb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i32, i32, i32, i32, i32, i32*, i64, i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.fb_info = type { %struct.TYPE_7__, %struct.TYPE_11__, i64 }
%struct.TYPE_7__ = type { i32, i8* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.gbefb_par = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@WID = common dso_local global i32 0, align 4
@TYP = common dso_local global i32 0, align 4
@GBE_CMODE_I8 = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i8* null, align 8
@GBE_CMODE_ARGB5 = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i8* null, align 8
@GBE_CMODE_RGB8 = common dso_local global i32 0, align 4
@BUF = common dso_local global i32 0, align 4
@GBE_BMODE_BOTH = common dso_local global i32 0, align 4
@gbe = common dso_local global %struct.TYPE_10__* null, align 8
@FRM_CONTROL = common dso_local global i32 0, align 4
@FRM_TILE_PTR = common dso_local global i32 0, align 4
@gbe_tiles = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@FRM_DMA_ENABLE = common dso_local global i32 0, align 4
@FRM_LINEAR = common dso_local global i32 0, align 4
@FRM_SIZE_TILE = common dso_local global i32 0, align 4
@FRM_WIDTH_TILE = common dso_local global i32 0, align 4
@FRM_RHS = common dso_local global i32 0, align 4
@FRM_DEPTH = common dso_local global i32 0, align 4
@GBE_FRM_DEPTH_8 = common dso_local global i32 0, align 4
@GBE_FRM_DEPTH_16 = common dso_local global i32 0, align 4
@GBE_FRM_DEPTH_32 = common dso_local global i32 0, align 4
@FRM_SIZE_PIXEL = common dso_local global i32 0, align 4
@FB_HEIGHT_PIX = common dso_local global i32 0, align 4
@gbe_cmap = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @gbefb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbefb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gbefb_par*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.gbefb_par*
  store %struct.gbefb_par* %16, %struct.gbefb_par** %12, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 1
  %19 = load %struct.gbefb_par*, %struct.gbefb_par** %12, align 8
  %20 = getelementptr inbounds %struct.gbefb_par, %struct.gbefb_par* %19, i32 0, i32 0
  %21 = call i32 @compute_gbe_timing(%struct.TYPE_11__* %18, %struct.TYPE_9__* %20)
  %22 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sdiv i32 %25, 8
  store i32 %26, i32* %11, align 4
  %27 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %11, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.gbefb_par*, %struct.gbefb_par** %12, align 8
  %37 = getelementptr inbounds %struct.gbefb_par, %struct.gbefb_par* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load %struct.gbefb_par*, %struct.gbefb_par** %12, align 8
  %41 = getelementptr inbounds %struct.gbefb_par, %struct.gbefb_par* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %10, align 4
  %44 = call i32 (...) @gbe_turn_off()
  %45 = load %struct.gbefb_par*, %struct.gbefb_par** %12, align 8
  %46 = getelementptr inbounds %struct.gbefb_par, %struct.gbefb_par* %45, i32 0, i32 0
  %47 = call i32 @gbe_set_timing_info(%struct.TYPE_9__* %46)
  store i32 0, i32* %4, align 4
  %48 = load i32, i32* %11, align 4
  switch i32 %48, label %79 [
    i32 1, label %49
    i32 2, label %59
    i32 4, label %69
  ]

49:                                               ; preds = %1
  %50 = load i32, i32* @WID, align 4
  %51 = load i32, i32* @TYP, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @GBE_CMODE_I8, align 4
  %54 = call i32 @SET_GBE_FIELD(i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i8*, i8** @FB_VISUAL_PSEUDOCOLOR, align 8
  %56 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i8* %55, i8** %58, align 8
  br label %79

59:                                               ; preds = %1
  %60 = load i32, i32* @WID, align 4
  %61 = load i32, i32* @TYP, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @GBE_CMODE_ARGB5, align 4
  %64 = call i32 @SET_GBE_FIELD(i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load i8*, i8** @FB_VISUAL_TRUECOLOR, align 8
  %66 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i8* %65, i8** %68, align 8
  br label %79

69:                                               ; preds = %1
  %70 = load i32, i32* @WID, align 4
  %71 = load i32, i32* @TYP, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @GBE_CMODE_RGB8, align 4
  %74 = call i32 @SET_GBE_FIELD(i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load i8*, i8** @FB_VISUAL_TRUECOLOR, align 8
  %76 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %77 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i8* %75, i8** %78, align 8
  br label %79

79:                                               ; preds = %1, %69, %59, %49
  %80 = load i32, i32* @WID, align 4
  %81 = load i32, i32* @BUF, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @GBE_BMODE_BOTH, align 4
  %84 = call i32 @SET_GBE_FIELD(i32 %80, i32 %81, i32 %82, i32 %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %96, %79
  %86 = load i32, i32* %3, align 4
  %87 = icmp slt i32 %86, 32
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbe, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %89, i32* %95, align 4
  br label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %85

99:                                               ; preds = %85
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbe, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  store i32 -1, i32* %101, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbe, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 2
  store i32 -1, i32* %103, align 4
  store i32 0, i32* %4, align 4
  %104 = load i32, i32* @FRM_CONTROL, align 4
  %105 = load i32, i32* @FRM_TILE_PTR, align 4
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @gbe_tiles, i32 0, i32 0), align 4
  %108 = ashr i32 %107, 9
  %109 = call i32 @SET_GBE_FIELD(i32 %104, i32 %105, i32 %106, i32 %108)
  %110 = load i32, i32* @FRM_CONTROL, align 4
  %111 = load i32, i32* @FRM_DMA_ENABLE, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @SET_GBE_FIELD(i32 %110, i32 %111, i32 %112, i32 0)
  %114 = load i32, i32* @FRM_CONTROL, align 4
  %115 = load i32, i32* @FRM_LINEAR, align 4
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @SET_GBE_FIELD(i32 %114, i32 %115, i32 %116, i32 0)
  %118 = load i32, i32* %4, align 4
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbe, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sdiv i32 512, %121
  store i32 %122, i32* %7, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  %123 = load i32, i32* @FRM_SIZE_TILE, align 4
  %124 = load i32, i32* @FRM_WIDTH_TILE, align 4
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @SET_GBE_FIELD(i32 %123, i32 %124, i32 %125, i32 %126)
  %128 = load i32, i32* @FRM_SIZE_TILE, align 4
  %129 = load i32, i32* @FRM_RHS, align 4
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @SET_GBE_FIELD(i32 %128, i32 %129, i32 %130, i32 %131)
  %133 = load i32, i32* %11, align 4
  switch i32 %133, label %152 [
    i32 1, label %134
    i32 2, label %140
    i32 4, label %146
  ]

134:                                              ; preds = %99
  %135 = load i32, i32* @FRM_SIZE_TILE, align 4
  %136 = load i32, i32* @FRM_DEPTH, align 4
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @GBE_FRM_DEPTH_8, align 4
  %139 = call i32 @SET_GBE_FIELD(i32 %135, i32 %136, i32 %137, i32 %138)
  br label %152

140:                                              ; preds = %99
  %141 = load i32, i32* @FRM_SIZE_TILE, align 4
  %142 = load i32, i32* @FRM_DEPTH, align 4
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @GBE_FRM_DEPTH_16, align 4
  %145 = call i32 @SET_GBE_FIELD(i32 %141, i32 %142, i32 %143, i32 %144)
  br label %152

146:                                              ; preds = %99
  %147 = load i32, i32* @FRM_SIZE_TILE, align 4
  %148 = load i32, i32* @FRM_DEPTH, align 4
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* @GBE_FRM_DEPTH_32, align 4
  %151 = call i32 @SET_GBE_FIELD(i32 %147, i32 %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %99, %146, %140, %134
  %153 = load i32, i32* %4, align 4
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbe, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %10, align 4
  %158 = mul nsw i32 %156, %157
  %159 = load i32, i32* %7, align 4
  %160 = sdiv i32 %158, %159
  store i32 %160, i32* %8, align 4
  store i32 0, i32* %4, align 4
  %161 = load i32, i32* @FRM_SIZE_PIXEL, align 4
  %162 = load i32, i32* @FB_HEIGHT_PIX, align 4
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @SET_GBE_FIELD(i32 %161, i32 %162, i32 %163, i32 %164)
  %166 = load i32, i32* %4, align 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbe, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 5
  store i32 %166, i32* %168, align 8
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbe, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 9
  store i64 0, i64* %170, align 8
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbe, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 8
  store i64 0, i64* %172, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbe, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 7
  store i64 0, i64* %174, align 8
  %175 = call i32 (...) @gbe_turn_on()
  %176 = call i32 @udelay(i32 10)
  store i32 0, i32* %3, align 4
  br label %177

177:                                              ; preds = %195, %152
  %178 = load i32, i32* %3, align 4
  %179 = icmp slt i32 %178, 256
  br i1 %179, label %180, label %198

180:                                              ; preds = %177
  %181 = load i32, i32* %3, align 4
  %182 = shl i32 %181, 24
  %183 = load i32, i32* %3, align 4
  %184 = shl i32 %183, 16
  %185 = or i32 %182, %184
  %186 = load i32, i32* %3, align 4
  %187 = shl i32 %186, 8
  %188 = or i32 %185, %187
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** @gbe, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 6
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %3, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %188, i32* %194, align 4
  br label %195

195:                                              ; preds = %180
  %196 = load i32, i32* %3, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %3, align 4
  br label %177

198:                                              ; preds = %177
  store i32 0, i32* %3, align 4
  br label %199

199:                                              ; preds = %215, %198
  %200 = load i32, i32* %3, align 4
  %201 = icmp slt i32 %200, 256
  br i1 %201, label %202, label %218

202:                                              ; preds = %199
  %203 = load i32, i32* %3, align 4
  %204 = shl i32 %203, 8
  %205 = load i32, i32* %3, align 4
  %206 = shl i32 %205, 16
  %207 = or i32 %204, %206
  %208 = load i32, i32* %3, align 4
  %209 = shl i32 %208, 24
  %210 = or i32 %207, %209
  %211 = load i32*, i32** @gbe_cmap, align 8
  %212 = load i32, i32* %3, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  store i32 %210, i32* %214, align 4
  br label %215

215:                                              ; preds = %202
  %216 = load i32, i32* %3, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %3, align 4
  br label %199

218:                                              ; preds = %199
  %219 = call i32 (...) @gbe_loadcmap()
  ret i32 0
}

declare dso_local i32 @compute_gbe_timing(%struct.TYPE_11__*, %struct.TYPE_9__*) #1

declare dso_local i32 @gbe_turn_off(...) #1

declare dso_local i32 @gbe_set_timing_info(%struct.TYPE_9__*) #1

declare dso_local i32 @SET_GBE_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @gbe_turn_on(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gbe_loadcmap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
