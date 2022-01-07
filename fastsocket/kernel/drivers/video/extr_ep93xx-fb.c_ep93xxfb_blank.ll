; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_ep93xx-fb.c_ep93xxfb_blank.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_ep93xx-fb.c_ep93xxfb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.ep93xx_fbi* }
%struct.ep93xx_fbi = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }

@EP93XXFB_ATTRIBS = common dso_local global i32 0, align 4
@EP93XXFB_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @ep93xxfb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xxfb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.ep93xx_fbi*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 0
  %9 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %8, align 8
  store %struct.ep93xx_fbi* %9, %struct.ep93xx_fbi** %5, align 8
  %10 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %5, align 8
  %11 = load i32, i32* @EP93XXFB_ATTRIBS, align 4
  %12 = call i32 @ep93xxfb_readl(%struct.ep93xx_fbi* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %2
  %16 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %5, align 8
  %17 = getelementptr inbounds %struct.ep93xx_fbi, %struct.ep93xx_fbi* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (i32, %struct.fb_info*)**
  %21 = load i32 (i32, %struct.fb_info*)*, i32 (i32, %struct.fb_info*)** %20, align 8
  %22 = icmp ne i32 (i32, %struct.fb_info*)* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %15
  %24 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %5, align 8
  %25 = getelementptr inbounds %struct.ep93xx_fbi, %struct.ep93xx_fbi* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (i32, %struct.fb_info*)**
  %29 = load i32 (i32, %struct.fb_info*)*, i32 (i32, %struct.fb_info*)** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %32 = call i32 %29(i32 %30, %struct.fb_info* %31)
  br label %33

33:                                               ; preds = %23, %15
  %34 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @EP93XXFB_ENABLE, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = load i32, i32* @EP93XXFB_ATTRIBS, align 4
  %40 = call i32 @ep93xxfb_out_locked(%struct.ep93xx_fbi* %34, i32 %38, i32 %39)
  %41 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %5, align 8
  %42 = getelementptr inbounds %struct.ep93xx_fbi, %struct.ep93xx_fbi* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @clk_disable(i32 %43)
  br label %74

45:                                               ; preds = %2
  %46 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %5, align 8
  %47 = getelementptr inbounds %struct.ep93xx_fbi, %struct.ep93xx_fbi* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @clk_enable(i32 %48)
  %50 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @EP93XXFB_ENABLE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @EP93XXFB_ATTRIBS, align 4
  %55 = call i32 @ep93xxfb_out_locked(%struct.ep93xx_fbi* %50, i32 %53, i32 %54)
  %56 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %5, align 8
  %57 = getelementptr inbounds %struct.ep93xx_fbi, %struct.ep93xx_fbi* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = bitcast {}** %59 to i32 (i32, %struct.fb_info*)**
  %61 = load i32 (i32, %struct.fb_info*)*, i32 (i32, %struct.fb_info*)** %60, align 8
  %62 = icmp ne i32 (i32, %struct.fb_info*)* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %45
  %64 = load %struct.ep93xx_fbi*, %struct.ep93xx_fbi** %5, align 8
  %65 = getelementptr inbounds %struct.ep93xx_fbi, %struct.ep93xx_fbi* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = bitcast {}** %67 to i32 (i32, %struct.fb_info*)**
  %69 = load i32 (i32, %struct.fb_info*)*, i32 (i32, %struct.fb_info*)** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %72 = call i32 %69(i32 %70, %struct.fb_info* %71)
  br label %73

73:                                               ; preds = %63, %45
  br label %74

74:                                               ; preds = %73, %33
  ret i32 0
}

declare dso_local i32 @ep93xxfb_readl(%struct.ep93xx_fbi*, i32) #1

declare dso_local i32 @ep93xxfb_out_locked(%struct.ep93xx_fbi*, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @clk_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
