; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxa168fb.c_pxa168fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxa168fb.c_pxa168fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.pxa168fb_info* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }
%struct.pxa168fb_info = type { i32*, i64 }

@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i64 0, align 8
@LCD_SPU_SRAM_WRDAT = common dso_local global i64 0, align 8
@LCD_SPU_SRAM_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @pxa168fb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa168fb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fb_info*, align 8
  %13 = alloca %struct.pxa168fb_info*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.fb_info* %5, %struct.fb_info** %12, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 2
  %17 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %16, align 8
  store %struct.pxa168fb_info* %17, %struct.pxa168fb_info** %13, align 8
  %18 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %6
  %24 = load i32, i32* %8, align 4
  %25 = mul i32 19595, %24
  %26 = load i32, i32* %9, align 4
  %27 = mul i32 38470, %26
  %28 = add i32 %25, %27
  %29 = load i32, i32* %10, align 4
  %30 = mul i32 7471, %29
  %31 = add i32 %28, %30
  %32 = lshr i32 %31, 16
  store i32 %32, i32* %10, align 4
  store i32 %32, i32* %9, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %23, %6
  %34 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %70

40:                                               ; preds = %33
  %41 = load i32, i32* %7, align 4
  %42 = icmp ult i32 %41, 16
  br i1 %42, label %43, label %70

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = call i32 @chan_to_field(i32 %44, i32* %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %51 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = call i32 @chan_to_field(i32 %49, i32* %52)
  %54 = load i32, i32* %14, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = call i32 @chan_to_field(i32 %56, i32* %59)
  %61 = load i32, i32* %14, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %13, align 8
  %65 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  br label %70

70:                                               ; preds = %43, %40, %33
  %71 = load %struct.fb_info*, %struct.fb_info** %12, align 8
  %72 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @FB_VISUAL_PSEUDOCOLOR, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %70
  %78 = load i32, i32* %7, align 4
  %79 = icmp ult i32 %78, 256
  br i1 %79, label %80, label %100

80:                                               ; preds = %77
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @to_rgb(i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %13, align 8
  %87 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @LCD_SPU_SRAM_WRDAT, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %85, i64 %90)
  %92 = load i32, i32* %7, align 4
  %93 = or i32 33536, %92
  %94 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %13, align 8
  %95 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @LCD_SPU_SRAM_CTRL, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @writel(i32 %93, i64 %98)
  br label %100

100:                                              ; preds = %80, %77, %70
  ret i32 0
}

declare dso_local i32 @chan_to_field(i32, i32*) #1

declare dso_local i32 @to_rgb(i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
