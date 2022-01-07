; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_ep93xx-fb.c_ep93xxfb_set_timing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_ep93xx-fb.c_ep93xxfb_set_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.ep93xx_fbi* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ep93xx_fbi = type { i32 }

@EP93XXFB_VLINES_TOTAL = common dso_local global i32 0, align 4
@EP93XXFB_HCLKS_TOTAL = common dso_local global i32 0, align 4
@EP93XXFB_VSYNC = common dso_local global i32 0, align 4
@EP93XXFB_VBLANK = common dso_local global i32 0, align 4
@EP93XXFB_VACTIVE = common dso_local global i32 0, align 4
@EP93XXFB_VCLK = common dso_local global i32 0, align 4
@EP93XXFB_HSYNC = common dso_local global i32 0, align 4
@EP93XXFB_HBLANK = common dso_local global i32 0, align 4
@EP93XXFB_HACTIVE = common dso_local global i32 0, align 4
@EP93XXFB_HCLK = common dso_local global i32 0, align 4
@EP93XXFB_LINE_CARRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @ep93xxfb_set_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ep93xxfb_set_timing(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.ep93xx_fbi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 1
  %10 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %9, align 8
  store %struct.ep93xx_fbi* %10, %struct.ep93xx_fbi** %3, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %14, %18
  %20 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %19, %23
  %25 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %24, %28
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  %31 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %34, %38
  %40 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %39, %43
  %45 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %44, %48
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @EP93XXFB_VLINES_TOTAL, align 4
  %54 = call i32 @ep93xxfb_out_locked(%struct.ep93xx_fbi* %51, i32 %52, i32 %53)
  %55 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @EP93XXFB_HCLKS_TOTAL, align 4
  %58 = call i32 @ep93xxfb_out_locked(%struct.ep93xx_fbi* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = sub i32 %60, %64
  store i32 %65, i32* %7, align 4
  %66 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = shl i32 %68, 16
  %70 = or i32 %67, %69
  %71 = load i32, i32* @EP93XXFB_VSYNC, align 4
  %72 = call i32 @ep93xxfb_out_locked(%struct.ep93xx_fbi* %66, i32 %70, i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = sub i32 %73, %77
  %79 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sub i32 %78, %82
  store i32 %83, i32* %6, align 4
  %84 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  %89 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %3, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = shl i32 %91, 16
  %93 = or i32 %90, %92
  %94 = load i32, i32* @EP93XXFB_VBLANK, align 4
  %95 = call i32 @ep93xxfb_out_locked(%struct.ep93xx_fbi* %89, i32 %93, i32 %94)
  %96 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %3, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = shl i32 %98, 16
  %100 = or i32 %97, %99
  %101 = load i32, i32* @EP93XXFB_VACTIVE, align 4
  %102 = call i32 @ep93xxfb_out_locked(%struct.ep93xx_fbi* %96, i32 %100, i32 %101)
  %103 = load i32, i32* %4, align 4
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %4, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %7, align 4
  %106 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %3, align 8
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %7, align 4
  %109 = shl i32 %108, 16
  %110 = or i32 %107, %109
  %111 = load i32, i32* @EP93XXFB_VCLK, align 4
  %112 = call i32 @ep93xxfb_out_locked(%struct.ep93xx_fbi* %106, i32 %110, i32 %111)
  %113 = load i32, i32* %5, align 4
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %116 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 4
  %119 = sub i32 %114, %118
  store i32 %119, i32* %7, align 4
  %120 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %3, align 8
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %7, align 4
  %123 = shl i32 %122, 16
  %124 = or i32 %121, %123
  %125 = load i32, i32* @EP93XXFB_HSYNC, align 4
  %126 = call i32 @ep93xxfb_out_locked(%struct.ep93xx_fbi* %120, i32 %124, i32 %125)
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %129 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 7
  %131 = load i32, i32* %130, align 4
  %132 = sub i32 %127, %131
  %133 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %134 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = sub i32 %132, %136
  store i32 %137, i32* %6, align 4
  %138 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %139 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = sub nsw i32 %141, 1
  store i32 %142, i32* %7, align 4
  %143 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %3, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %7, align 4
  %146 = shl i32 %145, 16
  %147 = or i32 %144, %146
  %148 = load i32, i32* @EP93XXFB_HBLANK, align 4
  %149 = call i32 @ep93xxfb_out_locked(%struct.ep93xx_fbi* %143, i32 %147, i32 %148)
  %150 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %3, align 8
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %7, align 4
  %153 = shl i32 %152, 16
  %154 = or i32 %151, %153
  %155 = load i32, i32* @EP93XXFB_HACTIVE, align 4
  %156 = call i32 @ep93xxfb_out_locked(%struct.ep93xx_fbi* %150, i32 %154, i32 %155)
  %157 = load i32, i32* %5, align 4
  store i32 %157, i32* %6, align 4
  %158 = load i32, i32* %5, align 4
  store i32 %158, i32* %7, align 4
  %159 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %3, align 8
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %7, align 4
  %162 = shl i32 %161, 16
  %163 = or i32 %160, %162
  %164 = load i32, i32* @EP93XXFB_HCLK, align 4
  %165 = call i32 @ep93xxfb_out_locked(%struct.ep93xx_fbi* %159, i32 %163, i32 %164)
  %166 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %3, align 8
  %167 = load i32, i32* @EP93XXFB_LINE_CARRY, align 4
  %168 = call i32 @ep93xxfb_out_locked(%struct.ep93xx_fbi* %166, i32 0, i32 %167)
  ret void
}

declare dso_local i32 @ep93xxfb_out_locked(%struct.ep93xx_fbi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
