; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm3fb.c_pm3fb_set_par.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm3fb.c_pm3fb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.pm3_par* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pm3_par = type { i32, i32 }

@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@PM3VideoControl_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@PM3VideoControl_HSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@PM3VideoControl_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@PM3VideoControl_VSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@FB_VMODE_MASK = common dso_local global i32 0, align 4
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@PM3VideoControl_LINE_DOUBLE_ON = common dso_local global i32 0, align 4
@FB_ACTIVATE_MASK = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@PM3VideoControl_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"PM3Video disabled\0A\00", align 1
@PM3VideoControl_PIXELSIZE_8BIT = common dso_local global i32 0, align 4
@PM3VideoControl_PIXELSIZE_16BIT = common dso_local global i32 0, align 4
@PM3VideoControl_PIXELSIZE_32BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Unsupported depth\0A\00", align 1
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@PM3RD_CursorMode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @pm3fb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm3fb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.pm3_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 2
  %8 = load %struct.pm3_par*, %struct.pm3_par** %7, align 8
  store %struct.pm3_par* %8, %struct.pm3_par** %3, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 31
  %14 = and i32 %13, -32
  store i32 %14, i32* %4, align 4
  %15 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %26, %30
  %32 = call i32 @pm3fb_shift_bpp(i32 %19, i64 %31)
  %33 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %34 = getelementptr inbounds %struct.pm3_par, %struct.pm3_par* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %36 = getelementptr inbounds %struct.pm3_par, %struct.pm3_par* %35, i32 0, i32 0
  store i32 0, i32* %36, align 4
  %37 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %1
  %45 = load i32, i32* @PM3VideoControl_HSYNC_ACTIVE_HIGH, align 4
  %46 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %47 = getelementptr inbounds %struct.pm3_par, %struct.pm3_par* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  br label %56

50:                                               ; preds = %1
  %51 = load i32, i32* @PM3VideoControl_HSYNC_ACTIVE_LOW, align 4
  %52 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %53 = getelementptr inbounds %struct.pm3_par, %struct.pm3_par* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %44
  %57 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load i32, i32* @PM3VideoControl_VSYNC_ACTIVE_HIGH, align 4
  %66 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %67 = getelementptr inbounds %struct.pm3_par, %struct.pm3_par* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %76

70:                                               ; preds = %56
  %71 = load i32, i32* @PM3VideoControl_VSYNC_ACTIVE_LOW, align 4
  %72 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %73 = getelementptr inbounds %struct.pm3_par, %struct.pm3_par* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %70, %64
  %77 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @FB_VMODE_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %76
  %86 = load i32, i32* @PM3VideoControl_LINE_DOUBLE_ON, align 4
  %87 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %88 = getelementptr inbounds %struct.pm3_par, %struct.pm3_par* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %76
  %92 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %93 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @FB_ACTIVATE_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %91
  %101 = load i32, i32* @PM3VideoControl_ENABLE, align 4
  %102 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %103 = getelementptr inbounds %struct.pm3_par, %struct.pm3_par* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %108

106:                                              ; preds = %91
  %107 = call i32 @DPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %108

108:                                              ; preds = %106, %100
  %109 = load i32, i32* %5, align 4
  switch i32 %109, label %128 [
    i32 8, label %110
    i32 16, label %116
    i32 32, label %122
  ]

110:                                              ; preds = %108
  %111 = load i32, i32* @PM3VideoControl_PIXELSIZE_8BIT, align 4
  %112 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %113 = getelementptr inbounds %struct.pm3_par, %struct.pm3_par* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %130

116:                                              ; preds = %108
  %117 = load i32, i32* @PM3VideoControl_PIXELSIZE_16BIT, align 4
  %118 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %119 = getelementptr inbounds %struct.pm3_par, %struct.pm3_par* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %130

122:                                              ; preds = %108
  %123 = load i32, i32* @PM3VideoControl_PIXELSIZE_32BIT, align 4
  %124 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %125 = getelementptr inbounds %struct.pm3_par, %struct.pm3_par* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %130

128:                                              ; preds = %108
  %129 = call i32 @DPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %122, %116, %110
  %131 = load i32, i32* %5, align 4
  %132 = icmp eq i32 %131, 8
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  br label %137

135:                                              ; preds = %130
  %136 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i32 [ %134, %133 ], [ %136, %135 ]
  %139 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %140 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 4
  %142 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %143 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 8
  %146 = add nsw i32 %145, 7
  %147 = ashr i32 %146, 3
  %148 = load i32, i32* %5, align 4
  %149 = mul i32 %147, %148
  %150 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %151 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 8
  %153 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %154 = call i32 @pm3fb_clear_colormap(%struct.pm3_par* %153, i32 0, i32 0, i32 0)
  %155 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %156 = load i32, i32* @PM3RD_CursorMode, align 4
  %157 = call i32 @PM3_WRITE_DAC_REG(%struct.pm3_par* %155, i32 %156, i32 0)
  %158 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %159 = call i32 @pm3fb_init_engine(%struct.fb_info* %158)
  %160 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %161 = call i32 @pm3fb_write_mode(%struct.fb_info* %160)
  ret i32 0
}

declare dso_local i32 @pm3fb_shift_bpp(i32, i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local i32 @pm3fb_clear_colormap(%struct.pm3_par*, i32, i32, i32) #1

declare dso_local i32 @PM3_WRITE_DAC_REG(%struct.pm3_par*, i32, i32) #1

declare dso_local i32 @pm3fb_init_engine(%struct.fb_info*) #1

declare dso_local i32 @pm3fb_write_mode(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
