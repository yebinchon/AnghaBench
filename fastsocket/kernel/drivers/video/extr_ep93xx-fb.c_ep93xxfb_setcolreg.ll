; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_ep93xx-fb.c_ep93xxfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_ep93xx-fb.c_ep93xxfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32*, %struct.TYPE_12__, %struct.TYPE_7__, %struct.ep93xx_fbi* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ep93xx_fbi = type { i32 }

@EP93XXFB_COLOR_LUT = common dso_local global i32 0, align 4
@EP93XXFB_LUT_SW_CONTROL = common dso_local global i32 0, align 4
@EP93XXFB_LUT_SW_CONTROL_SSTAT = common dso_local global i32 0, align 4
@EP93XXFB_LUT_SW_CONTROL_SWTCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @ep93xxfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xxfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.ep93xx_fbi*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %21 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 3
  %23 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %22, align 8
  store %struct.ep93xx_fbi* %23, %struct.ep93xx_fbi** %14, align 8
  %24 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %15, align 8
  %27 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %169 [
    i32 129, label %31
    i32 128, label %101
  ]

31:                                               ; preds = %6
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 65280
  %34 = shl i32 %33, 8
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, 65280
  %37 = or i32 %34, %36
  %38 = load i32, i32* %11, align 4
  %39 = and i32 %38, 65280
  %40 = lshr i32 %39, 8
  %41 = or i32 %37, %40
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = load i32*, i32** %15, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  %47 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %14, align 8
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* @EP93XXFB_COLOR_LUT, align 4
  %50 = load i32, i32* %8, align 4
  %51 = shl i32 %50, 2
  %52 = add i32 %49, %51
  %53 = call i32 @ep93xxfb_writel(%struct.ep93xx_fbi* %47, i32 %48, i32 %52)
  %54 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %14, align 8
  %55 = load i32, i32* @EP93XXFB_LUT_SW_CONTROL, align 4
  %56 = call i32 @ep93xxfb_readl(%struct.ep93xx_fbi* %54, i32 %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = load i32, i32* @EP93XXFB_LUT_SW_CONTROL_SSTAT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* @EP93XXFB_LUT_SW_CONTROL_SWTCH, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %19, align 4
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* %19, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %31
  store i32 0, i32* %17, align 4
  br label %75

75:                                               ; preds = %90, %74
  %76 = load i32, i32* %17, align 4
  %77 = icmp ult i32 %76, 256
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %14, align 8
  %80 = load i32*, i32** %15, align 8
  %81 = load i32, i32* %17, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @EP93XXFB_COLOR_LUT, align 4
  %86 = load i32, i32* %17, align 4
  %87 = shl i32 %86, 2
  %88 = add i32 %85, %87
  %89 = call i32 @ep93xxfb_writel(%struct.ep93xx_fbi* %79, i32 %84, i32 %88)
  br label %90

90:                                               ; preds = %78
  %91 = load i32, i32* %17, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %17, align 4
  br label %75

93:                                               ; preds = %75
  %94 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %14, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* @EP93XXFB_LUT_SW_CONTROL_SWTCH, align 4
  %97 = xor i32 %95, %96
  %98 = load i32, i32* @EP93XXFB_LUT_SW_CONTROL, align 4
  %99 = call i32 @ep93xxfb_writel(%struct.ep93xx_fbi* %94, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %93, %31
  br label %170

101:                                              ; preds = %6
  %102 = load i32, i32* %8, align 4
  %103 = icmp ugt i32 %102, 16
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 1, i32* %7, align 4
  br label %171

105:                                              ; preds = %101
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %108 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ep93xxfb_convert_color(i32 %106, i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %115 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ep93xxfb_convert_color(i32 %113, i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %122 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ep93xxfb_convert_color(i32 %120, i32 %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %129 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @ep93xxfb_convert_color(i32 %127, i32 %132)
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %9, align 4
  %135 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %136 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = shl i32 %134, %139
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %143 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = shl i32 %141, %146
  %148 = or i32 %140, %147
  %149 = load i32, i32* %11, align 4
  %150 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %151 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = shl i32 %149, %154
  %156 = or i32 %148, %155
  %157 = load i32, i32* %12, align 4
  %158 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %159 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = shl i32 %157, %162
  %164 = or i32 %156, %163
  %165 = load i32*, i32** %15, align 8
  %166 = load i32, i32* %8, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  store i32 %164, i32* %168, align 4
  br label %170

169:                                              ; preds = %6
  store i32 1, i32* %7, align 4
  br label %171

170:                                              ; preds = %105, %100
  store i32 0, i32* %7, align 4
  br label %171

171:                                              ; preds = %170, %169, %104
  %172 = load i32, i32* %7, align 4
  ret i32 %172
}

declare dso_local i32 @ep93xxfb_writel(%struct.ep93xx_fbi*, i32, i32) #1

declare dso_local i32 @ep93xxfb_readl(%struct.ep93xx_fbi*, i32) #1

declare dso_local i32 @ep93xxfb_convert_color(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
