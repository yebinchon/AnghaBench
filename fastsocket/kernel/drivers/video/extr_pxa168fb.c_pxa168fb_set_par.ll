; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxa168fb.c_pxa168fb_set_par.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxa168fb.c_pxa168fb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.fb_var_screeninfo, %struct.TYPE_4__, %struct.pxa168fb_info* }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.pxa168fb_info = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.pxa168fb_mach_info* }
%struct.pxa168fb_mach_info = type { i32 }
%struct.fb_videomode = type { i32 }

@PIX_FMT_PSEUDOCOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@LCD_SPU_DUMB_CTRL = common dso_local global i64 0, align 8
@LCD_SPU_V_H_ACTIVE = common dso_local global i64 0, align 8
@LCD_CFG_GRA_PITCH = common dso_local global i64 0, align 8
@LCD_SPU_GRA_HPXL_VLN = common dso_local global i64 0, align 8
@LCD_SPU_GZM_HPXL_VLN = common dso_local global i64 0, align 8
@LCD_SPU_H_PORCH = common dso_local global i64 0, align 8
@LCD_SPU_V_PORCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @pxa168fb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa168fb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.pxa168fb_info*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_videomode, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pxa168fb_mach_info*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 2
  %10 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %9, align 8
  store %struct.pxa168fb_info* %10, %struct.pxa168fb_info** %3, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  store %struct.fb_var_screeninfo* %12, %struct.fb_var_screeninfo** %4, align 8
  %13 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %13, i32 0, i32 2
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.pxa168fb_mach_info*, %struct.pxa168fb_mach_info** %16, align 8
  store %struct.pxa168fb_mach_info* %17, %struct.pxa168fb_mach_info** %7, align 8
  %18 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %19 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PIX_FMT_PSEUDOCOLOR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  %25 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  br label %33

28:                                               ; preds = %1
  %29 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %30 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  %41 = sdiv i32 %40, 8
  %42 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %52 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LCD_SPU_DUMB_CTRL, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readl(i64 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, -2
  %59 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %60 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @LCD_SPU_DUMB_CTRL, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  %65 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %66 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 16
  %69 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %70 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %68, %71
  %73 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %74 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @LCD_SPU_V_H_ACTIVE, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 %72, i64 %77)
  %79 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = call i32 @fb_var_to_videomode(%struct.fb_videomode* %5, %struct.fb_var_screeninfo* %80)
  %82 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %83 = call i32 @set_clock_divider(%struct.pxa168fb_info* %82, %struct.fb_videomode* %5)
  %84 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %85 = call i32 @set_dma_control0(%struct.pxa168fb_info* %84)
  %86 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %87 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %88 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @set_dma_control1(%struct.pxa168fb_info* %86, i32 %90)
  %92 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %93 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @LCD_CFG_GRA_PITCH, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @readl(i64 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, -65536
  %100 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %101 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %104 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %102, %105
  %107 = ashr i32 %106, 3
  %108 = or i32 %99, %107
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %111 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @LCD_CFG_GRA_PITCH, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @writel(i32 %109, i64 %114)
  %116 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %117 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = shl i32 %118, 16
  %120 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %121 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %119, %122
  %124 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %125 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @LCD_SPU_GRA_HPXL_VLN, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @writel(i32 %123, i64 %128)
  %130 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %131 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = shl i32 %132, 16
  %134 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %135 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %133, %136
  %138 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %139 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @LCD_SPU_GZM_HPXL_VLN, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @writel(i32 %137, i64 %142)
  %144 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %145 = call i32 @set_dumb_panel_control(%struct.fb_info* %144)
  %146 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %147 = call i32 @set_dumb_screen_dimensions(%struct.fb_info* %146)
  %148 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %149 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = shl i32 %150, 16
  %152 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %153 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %152, i32 0, i32 5
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %151, %154
  %156 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %157 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @LCD_SPU_H_PORCH, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @writel(i32 %155, i64 %160)
  %162 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %163 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 %164, 16
  %166 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %167 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %165, %168
  %170 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %171 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @LCD_SPU_V_PORCH, align 8
  %174 = add nsw i64 %172, %173
  %175 = call i32 @writel(i32 %169, i64 %174)
  %176 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %177 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @LCD_SPU_DUMB_CTRL, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @readl(i64 %180)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = or i32 %182, 1
  %184 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %3, align 8
  %185 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @LCD_SPU_DUMB_CTRL, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @writel(i32 %183, i64 %188)
  ret i32 0
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @fb_var_to_videomode(%struct.fb_videomode*, %struct.fb_var_screeninfo*) #1

declare dso_local i32 @set_clock_divider(%struct.pxa168fb_info*, %struct.fb_videomode*) #1

declare dso_local i32 @set_dma_control0(%struct.pxa168fb_info*) #1

declare dso_local i32 @set_dma_control1(%struct.pxa168fb_info*, i32) #1

declare dso_local i32 @set_dumb_panel_control(%struct.fb_info*) #1

declare dso_local i32 @set_dumb_screen_dimensions(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
