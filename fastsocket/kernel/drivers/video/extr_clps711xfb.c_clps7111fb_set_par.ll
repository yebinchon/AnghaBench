; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_clps711xfb.c_clps7111fb_set_par.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_clps711xfb.c_clps7111fb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i8* }

@FB_VISUAL_MONO01 = common dso_local global i8* null, align 8
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i8* null, align 8
@lcd_ac_prescale = common dso_local global i32 0, align 4
@LCDCON_GSMD = common dso_local global i32 0, align 4
@LCDCON_GSEN = common dso_local global i32 0, align 4
@SYSCON1 = common dso_local global i32 0, align 4
@SYSCON1_LCDEN = common dso_local global i32 0, align 4
@LCDCON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @clps7111fb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clps7111fb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %7 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %25 [
    i32 1, label %10
    i32 2, label %15
    i32 4, label %20
  ]

10:                                               ; preds = %1
  %11 = load i8*, i8** @FB_VISUAL_MONO01, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store i8* %11, i8** %14, align 8
  br label %25

15:                                               ; preds = %1
  %16 = load i8*, i8** @FB_VISUAL_PSEUDOCOLOR, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i8* %16, i8** %19, align 8
  br label %25

20:                                               ; preds = %1
  %21 = load i8*, i8** @FB_VISUAL_PSEUDOCOLOR, align 8
  %22 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i8* %21, i8** %24, align 8
  br label %25

25:                                               ; preds = %1, %20, %15, %10
  %26 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %29, %33
  %35 = sdiv i32 %34, 8
  %36 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %42, %46
  %48 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %47, %51
  %53 = sdiv i32 %52, 128
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  %55 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %58, 16
  %60 = sub nsw i32 %59, 1
  %61 = shl i32 %60, 13
  %62 = load i32, i32* %3, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* @lcd_ac_prescale, align 4
  %65 = shl i32 %64, 25
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  %68 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %69 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 9, %71
  %73 = sdiv i32 %72, 244140
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = shl i32 %75, 19
  %77 = load i32, i32* %3, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %3, align 4
  %79 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 4
  br i1 %83, label %84, label %88

84:                                               ; preds = %25
  %85 = load i32, i32* @LCDCON_GSMD, align 4
  %86 = load i32, i32* %3, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %84, %25
  %89 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %90 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp sge i32 %92, 2
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i32, i32* @LCDCON_GSEN, align 4
  %96 = load i32, i32* %3, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %88
  %99 = load i32, i32* @SYSCON1, align 4
  %100 = call i32 @clps_readl(i32 %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @SYSCON1_LCDEN, align 4
  %103 = xor i32 %102, -1
  %104 = and i32 %101, %103
  %105 = load i32, i32* @SYSCON1, align 4
  %106 = call i32 @clps_writel(i32 %104, i32 %105)
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @LCDCON, align 4
  %109 = call i32 @clps_writel(i32 %107, i32 %108)
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @SYSCON1_LCDEN, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @SYSCON1, align 4
  %114 = call i32 @clps_writel(i32 %112, i32 %113)
  ret i32 0
}

declare dso_local i32 @clps_readl(i32) #1

declare dso_local i32 @clps_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
