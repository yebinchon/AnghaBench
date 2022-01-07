; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cyber2000fb.c_cyber2000fb_set_par.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cyber2000fb.c_cyber2000fb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.cfb_info = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.fb_var_screeninfo }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.par_info = type { i32, i32, i32, i32, i32, i32 }

@RAMDAC_VREFEN = common dso_local global i32 0, align 4
@RAMDAC_DAC8BIT = common dso_local global i32 0, align 4
@CO_PIXFMT_8BPP = common dso_local global i32 0, align 4
@EXT_SEQ_MISC_8 = common dso_local global i32 0, align 4
@CO_PIXFMT_16BPP = common dso_local global i32 0, align 4
@EXT_SEQ_MISC_16_RGB565 = common dso_local global i32 0, align 4
@EXT_SEQ_MISC_16_RGB555 = common dso_local global i32 0, align 4
@EXT_SEQ_MISC_16_RGB444 = common dso_local global i32 0, align 4
@CO_PIXFMT_24BPP = common dso_local global i32 0, align 4
@RAMDAC_BYPASS = common dso_local global i32 0, align 4
@RAMDAC_RAMPWRDN = common dso_local global i32 0, align 4
@EXT_SEQ_MISC_24_RGB888 = common dso_local global i32 0, align 4
@CO_PIXFMT_32BPP = common dso_local global i32 0, align 4
@EXT_SEQ_MISC_32 = common dso_local global i32 0, align 4
@MEM_CTL2_64BIT = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_DIRECTCOLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @cyber2000fb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyber2000fb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.cfb_info*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.par_info, align 4
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %8 = bitcast %struct.fb_info* %7 to %struct.cfb_info*
  store %struct.cfb_info* %8, %struct.cfb_info** %3, align 8
  %9 = load %struct.cfb_info*, %struct.cfb_info** %3, align 8
  %10 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store %struct.fb_var_screeninfo* %11, %struct.fb_var_screeninfo** %4, align 8
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %13 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @RAMDAC_VREFEN, align 4
  %17 = load i32, i32* @RAMDAC_DAC8BIT, align 4
  %18 = or i32 %16, %17
  %19 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %88 [
    i32 8, label %23
    i32 16, label %32
    i32 24, label %55
    i32 32, label %73
  ]

23:                                               ; preds = %1
  %24 = load i32, i32* @CO_PIXFMT_8BPP, align 4
  %25 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 5
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 3
  %29 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @EXT_SEQ_MISC_8, align 4
  %31 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 4
  store i32 %30, i32* %31, align 4
  br label %90

32:                                               ; preds = %1
  %33 = load i32, i32* @CO_PIXFMT_16BPP, align 4
  %34 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 5
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 2
  %38 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %52 [
    i32 6, label %43
    i32 5, label %46
    i32 4, label %49
  ]

43:                                               ; preds = %32
  %44 = load i32, i32* @EXT_SEQ_MISC_16_RGB565, align 4
  %45 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 4
  store i32 %44, i32* %45, align 4
  br label %54

46:                                               ; preds = %32
  %47 = load i32, i32* @EXT_SEQ_MISC_16_RGB555, align 4
  %48 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 4
  store i32 %47, i32* %48, align 4
  br label %54

49:                                               ; preds = %32
  %50 = load i32, i32* @EXT_SEQ_MISC_16_RGB444, align 4
  %51 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 4
  store i32 %50, i32* %51, align 4
  br label %54

52:                                               ; preds = %32
  %53 = call i32 (...) @BUG()
  br label %54

54:                                               ; preds = %52, %49, %46, %43
  br label %90

55:                                               ; preds = %1
  %56 = load i32, i32* @CO_PIXFMT_24BPP, align 4
  %57 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 5
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 %59, 3
  store i32 %60, i32* %58, align 4
  %61 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %62, 3
  %64 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @RAMDAC_BYPASS, align 4
  %66 = load i32, i32* @RAMDAC_RAMPWRDN, align 4
  %67 = or i32 %65, %66
  %68 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %67
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @EXT_SEQ_MISC_24_RGB888, align 4
  %72 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 4
  store i32 %71, i32* %72, align 4
  br label %90

73:                                               ; preds = %1
  %74 = load i32, i32* @CO_PIXFMT_32BPP, align 4
  %75 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 5
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 1
  %79 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 2
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @RAMDAC_BYPASS, align 4
  %81 = load i32, i32* @RAMDAC_RAMPWRDN, align 4
  %82 = or i32 %80, %81
  %83 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %82
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* @EXT_SEQ_MISC_32, align 4
  %87 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 4
  store i32 %86, i32* %87, align 4
  br label %90

88:                                               ; preds = %1
  %89 = call i32 (...) @BUG()
  br label %90

90:                                               ; preds = %88, %73, %55, %54, %23
  %91 = load %struct.cfb_info*, %struct.cfb_info** %3, align 8
  %92 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %93 = call i64 @cyber2000fb_decode_clock(%struct.par_info* %5, %struct.cfb_info* %91, %struct.fb_var_screeninfo* %92)
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i32
  %96 = call i32 @BUG_ON(i32 %95)
  %97 = load %struct.cfb_info*, %struct.cfb_info** %3, align 8
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %99 = call i64 @cyber2000fb_decode_crtc(%struct.par_info* %5, %struct.cfb_info* %97, %struct.fb_var_screeninfo* %98)
  %100 = icmp ne i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @BUG_ON(i32 %101)
  %103 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sub nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 3
  store i32 %107, i32* %108, align 4
  %109 = load %struct.cfb_info*, %struct.cfb_info** %3, align 8
  %110 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @MEM_CTL2_64BIT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %90
  %116 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 1
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %115, %90
  %120 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %124 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %127 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %125, %128
  %130 = sdiv i32 %129, 8
  %131 = load %struct.cfb_info*, %struct.cfb_info** %3, align 8
  %132 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  store i32 %130, i32* %134, align 4
  %135 = load %struct.cfb_info*, %struct.cfb_info** %3, align 8
  %136 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %141 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = mul i32 %139, %142
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load %struct.cfb_info*, %struct.cfb_info** %3, align 8
  %146 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ugt i32 %144, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @BUG_ON(i32 %151)
  %153 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %154 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 8
  br i1 %156, label %157, label %163

157:                                              ; preds = %119
  %158 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  %159 = load %struct.cfb_info*, %struct.cfb_info** %3, align 8
  %160 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  store i32 %158, i32* %162, align 4
  br label %182

163:                                              ; preds = %119
  %164 = getelementptr inbounds %struct.par_info, %struct.par_info* %5, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @RAMDAC_BYPASS, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %163
  %170 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %171 = load %struct.cfb_info*, %struct.cfb_info** %3, align 8
  %172 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 2
  store i32 %170, i32* %174, align 4
  br label %181

175:                                              ; preds = %163
  %176 = load i32, i32* @FB_VISUAL_DIRECTCOLOR, align 4
  %177 = load %struct.cfb_info*, %struct.cfb_info** %3, align 8
  %178 = getelementptr inbounds %struct.cfb_info, %struct.cfb_info* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  store i32 %176, i32* %180, align 4
  br label %181

181:                                              ; preds = %175, %169
  br label %182

182:                                              ; preds = %181, %157
  %183 = load %struct.cfb_info*, %struct.cfb_info** %3, align 8
  %184 = call i32 @cyber2000fb_set_timing(%struct.cfb_info* %183, %struct.par_info* %5)
  %185 = load %struct.cfb_info*, %struct.cfb_info** %3, align 8
  %186 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %187 = call i32 @cyber2000fb_update_start(%struct.cfb_info* %185, %struct.fb_var_screeninfo* %186)
  ret i32 0
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @cyber2000fb_decode_clock(%struct.par_info*, %struct.cfb_info*, %struct.fb_var_screeninfo*) #1

declare dso_local i64 @cyber2000fb_decode_crtc(%struct.par_info*, %struct.cfb_info*, %struct.fb_var_screeninfo*) #1

declare dso_local i32 @cyber2000fb_set_timing(%struct.cfb_info*, %struct.par_info*) #1

declare dso_local i32 @cyber2000fb_update_start(%struct.cfb_info*, %struct.fb_var_screeninfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
