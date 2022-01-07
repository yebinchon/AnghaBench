; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_au1200fb.c_au1200fb_fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_au1200fb.c_au1200fb_fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.fb_info = type { %struct.TYPE_11__, i64, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }

@lcd = common dso_local global %struct.TYPE_12__* null, align 8
@AU1200_LCD_NBR_PALETTE_ENTRIES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @au1200fb_fb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1200fb_fb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @lcd, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %14, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @AU1200_LCD_NBR_PALETTE_ENTRIES, align 4
  %21 = sub nsw i32 %20, 1
  %22 = icmp ugt i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %128

26:                                               ; preds = %6
  %27 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = mul i32 19595, %33
  %35 = load i32, i32* %10, align 4
  %36 = mul i32 38470, %35
  %37 = add i32 %34, %36
  %38 = load i32, i32* %11, align 4
  %39 = mul i32 7471, %38
  %40 = add i32 %37, %39
  %41 = lshr i32 %40, 16
  store i32 %41, i32* %11, align 4
  store i32 %41, i32* %10, align 4
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %32, %26
  %43 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %109

49:                                               ; preds = %42
  %50 = load i32, i32* %8, align 4
  %51 = icmp ugt i32 %50, 16
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %128

55:                                               ; preds = %49
  %56 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  store i32* %59, i32** %14, align 8
  %60 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 16, %64
  %66 = load i32, i32* %9, align 4
  %67 = lshr i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %69 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 16, %72
  %74 = load i32, i32* %10, align 4
  %75 = lshr i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %77 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub nsw i32 16, %80
  %82 = load i32, i32* %11, align 4
  %83 = lshr i32 %82, %81
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %86 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %84, %89
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %93 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %91, %96
  %98 = or i32 %90, %97
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %101 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %99, %104
  %106 = or i32 %98, %105
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %15, align 4
  %108 = and i32 %107, 65535
  store i32 %108, i32* %15, align 4
  br label %122

109:                                              ; preds = %42
  %110 = load i32, i32* %9, align 4
  %111 = and i32 %110, 63488
  %112 = load i32, i32* %10, align 4
  %113 = lshr i32 %112, 5
  %114 = and i32 %113, 2016
  %115 = or i32 %111, %114
  %116 = load i32, i32* %11, align 4
  %117 = lshr i32 %116, 11
  %118 = and i32 %117, 31
  %119 = or i32 %115, %118
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %15, align 4
  %121 = and i32 %120, 65535
  store i32 %121, i32* %15, align 4
  br label %122

122:                                              ; preds = %109, %55
  %123 = load i32, i32* %15, align 4
  %124 = load i32*, i32** %14, align 8
  %125 = load i32, i32* %8, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  store volatile i32 %123, i32* %127, align 4
  store i32 0, i32* %7, align 4
  br label %128

128:                                              ; preds = %122, %52, %23
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
