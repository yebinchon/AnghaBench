; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_da8xx-fb.c_fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_da8xx-fb.c_fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_10__, %struct.TYPE_6__, %struct.da8xx_fb_par* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.da8xx_fb_par = type { i32*, i64 }

@FB_VISUAL_DIRECTCOLOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @fb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.da8xx_fb_par*, align 8
  %15 = alloca i16*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 2
  %19 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %18, align 8
  store %struct.da8xx_fb_par* %19, %struct.da8xx_fb_par** %14, align 8
  %20 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %14, align 8
  %21 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i16*
  store i16* %23, i16** %15, align 8
  %24 = load i32, i32* %8, align 4
  %25 = icmp ugt i32 %24, 255
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %134

27:                                               ; preds = %6
  %28 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FB_VISUAL_DIRECTCOLOR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 1, i32* %7, align 4
  br label %134

35:                                               ; preds = %27
  %36 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 8
  br i1 %40, label %41, label %64

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  %43 = lshr i32 %42, 4
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = lshr i32 %44, 8
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = lshr i32 %46, 12
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 3840
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, 240
  %52 = load i32, i32* %16, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %11, align 4
  %55 = and i32 %54, 15
  %56 = load i32, i32* %16, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = trunc i32 %58 to i16
  %60 = load i16*, i16** %15, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i16, i16* %60, i64 %62
  store i16 %59, i16* %63, align 2
  br label %133

64:                                               ; preds = %35
  %65 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %66 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 16
  br i1 %69, label %70, label %132

70:                                               ; preds = %64
  %71 = load i32, i32* %8, align 4
  %72 = icmp ult i32 %71, 16
  br i1 %72, label %73, label %132

73:                                               ; preds = %70
  %74 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %75 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 16, %78
  %80 = load i32, i32* %9, align 4
  %81 = lshr i32 %80, %79
  store i32 %81, i32* %9, align 4
  %82 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %83 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = shl i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %90 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 16, %93
  %95 = load i32, i32* %10, align 4
  %96 = lshr i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %98 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %10, align 4
  %103 = shl i32 %102, %101
  store i32 %103, i32* %10, align 4
  %104 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %105 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 16, %108
  %110 = load i32, i32* %11, align 4
  %111 = lshr i32 %110, %109
  store i32 %111, i32* %11, align 4
  %112 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %113 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %11, align 4
  %118 = shl i32 %117, %116
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %10, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* %11, align 4
  %123 = or i32 %121, %122
  %124 = load %struct.da8xx_fb_par*, %struct.da8xx_fb_par** %14, align 8
  %125 = getelementptr inbounds %struct.da8xx_fb_par, %struct.da8xx_fb_par* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %123, i32* %129, align 4
  %130 = load i16*, i16** %15, align 8
  %131 = getelementptr inbounds i16, i16* %130, i64 0
  store i16 16384, i16* %131, align 2
  br label %132

132:                                              ; preds = %73, %70, %64
  br label %133

133:                                              ; preds = %132, %41
  store i32 0, i32* %7, align 4
  br label %134

134:                                              ; preds = %133, %34, %26
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
