; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_ep93xx-fb.c_ep93xxfb_set_pixelmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_ep93xx-fb.c_ep93xxfb_set_pixelmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.ep93xx_fbi* }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.ep93xx_fbi = type { i32 }

@EP93XXFB_PIXELMODE_8BPP = common dso_local global i32 0, align 4
@EP93XXFB_PIXELMODE_COLOR_LUT = common dso_local global i32 0, align 4
@EP93XXFB_PIXELMODE_SHIFT_1P_18B = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i8* null, align 8
@EP93XXFB_PIXELMODE_16BPP = common dso_local global i32 0, align 4
@EP93XXFB_PIXELMODE_COLOR_555 = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i8* null, align 8
@EP93XXFB_PIXELMODE_24BPP = common dso_local global i32 0, align 4
@EP93XXFB_PIXELMODE_COLOR_888 = common dso_local global i32 0, align 4
@EP93XXFB_PIXELMODE_SHIFT_1P_24B = common dso_local global i32 0, align 4
@EP93XXFB_PIXELMODE_32BPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EP93XXFB_PIXELMODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @ep93xxfb_set_pixelmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xxfb_set_pixelmode(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.ep93xx_fbi*, align 8
  %5 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 2
  %8 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %7, align 8
  store %struct.ep93xx_fbi* %8, %struct.ep93xx_fbi** %4, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %157 [
    i32 8, label %21
    i32 16, label %55
    i32 24, label %89
    i32 32, label %123
  ]

21:                                               ; preds = %1
  %22 = load i32, i32* @EP93XXFB_PIXELMODE_8BPP, align 4
  %23 = load i32, i32* @EP93XXFB_PIXELMODE_COLOR_LUT, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @EP93XXFB_PIXELMODE_SHIFT_1P_18B, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %5, align 4
  %27 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  store i32 8, i32* %34, align 4
  %35 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  store i32 8, i32* %42, align 4
  %43 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i32 8, i32* %50, align 4
  %51 = load i8*, i8** @FB_VISUAL_PSEUDOCOLOR, align 8
  %52 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  br label %160

55:                                               ; preds = %1
  %56 = load i32, i32* @EP93XXFB_PIXELMODE_16BPP, align 4
  %57 = load i32, i32* @EP93XXFB_PIXELMODE_COLOR_555, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @EP93XXFB_PIXELMODE_SHIFT_1P_18B, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %5, align 4
  %61 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 11, i32* %64, align 4
  %65 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %66 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  store i32 5, i32* %68, align 4
  %69 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %70 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i32 5, i32* %72, align 4
  %73 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store i32 6, i32* %76, align 4
  %77 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  store i32 0, i32* %80, align 4
  %81 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 5, i32* %84, align 4
  %85 = load i8*, i8** @FB_VISUAL_TRUECOLOR, align 8
  %86 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %87 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  store i8* %85, i8** %88, align 8
  br label %160

89:                                               ; preds = %1
  %90 = load i32, i32* @EP93XXFB_PIXELMODE_24BPP, align 4
  %91 = load i32, i32* @EP93XXFB_PIXELMODE_COLOR_888, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @EP93XXFB_PIXELMODE_SHIFT_1P_24B, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %5, align 4
  %95 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %96 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  store i32 16, i32* %98, align 4
  %99 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %100 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  store i32 8, i32* %102, align 4
  %103 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  store i32 8, i32* %106, align 4
  %107 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %108 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  store i32 8, i32* %110, align 4
  %111 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  store i32 0, i32* %114, align 4
  %115 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %116 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  store i32 8, i32* %118, align 4
  %119 = load i8*, i8** @FB_VISUAL_TRUECOLOR, align 8
  %120 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %121 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  store i8* %119, i8** %122, align 8
  br label %160

123:                                              ; preds = %1
  %124 = load i32, i32* @EP93XXFB_PIXELMODE_32BPP, align 4
  %125 = load i32, i32* @EP93XXFB_PIXELMODE_COLOR_888, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @EP93XXFB_PIXELMODE_SHIFT_1P_24B, align 4
  %128 = or i32 %126, %127
  store i32 %128, i32* %5, align 4
  %129 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %130 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  store i32 16, i32* %132, align 4
  %133 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %134 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  store i32 8, i32* %136, align 4
  %137 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %138 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  store i32 8, i32* %140, align 4
  %141 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %142 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  store i32 8, i32* %144, align 4
  %145 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %146 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  store i32 0, i32* %148, align 4
  %149 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %150 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  store i32 8, i32* %152, align 4
  %153 = load i8*, i8** @FB_VISUAL_TRUECOLOR, align 8
  %154 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %155 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  store i8* %153, i8** %156, align 8
  br label %160

157:                                              ; preds = %1
  %158 = load i32, i32* @EINVAL, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %2, align 4
  br label %165

160:                                              ; preds = %123, %89, %55, %21
  %161 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %4, align 8
  %162 = load i32, i32* %5, align 4
  %163 = load i32, i32* @EP93XXFB_PIXELMODE, align 4
  %164 = call i32 @ep93xxfb_writel(%struct.ep93xx_fbi* %161, i32 %162, i32 %163)
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %160, %157
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @ep93xxfb_writel(%struct.ep93xx_fbi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
