; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxafb.c_pxafb_setpalettereg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pxafb.c_pxafb_setpalettereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.pxafb_info = type { i64, i64*, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@LCCR4_PAL_FOR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i64, i64, %struct.fb_info*)* @pxafb_setpalettereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxafb_setpalettereg(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.pxafb_info*, align 8
  %15 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %17 = bitcast %struct.fb_info* %16 to %struct.pxafb_info*
  store %struct.pxafb_info* %17, %struct.pxafb_info** %14, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load %struct.pxafb_info*, %struct.pxafb_info** %14, align 8
  %20 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %127

24:                                               ; preds = %6
  %25 = load %struct.pxafb_info*, %struct.pxafb_info** %14, align 8
  %26 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load i64, i64* %11, align 8
  %33 = lshr i64 %32, 8
  %34 = and i64 %33, 255
  %35 = load %struct.pxafb_info*, %struct.pxafb_info** %14, align 8
  %36 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64 %34, i64* %39, align 8
  store i32 0, i32* %7, align 4
  br label %127

40:                                               ; preds = %24
  %41 = load %struct.pxafb_info*, %struct.pxafb_info** %14, align 8
  %42 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @LCCR4_PAL_FOR_MASK, align 4
  %45 = and i32 %43, %44
  switch i32 %45, label %126 [
    i32 131, label %46
    i32 130, label %66
    i32 129, label %86
    i32 128, label %106
  ]

46:                                               ; preds = %40
  %47 = load i64, i64* %9, align 8
  %48 = lshr i64 %47, 0
  %49 = and i64 %48, 63488
  store i64 %49, i64* %15, align 8
  %50 = load i64, i64* %10, align 8
  %51 = lshr i64 %50, 5
  %52 = and i64 %51, 2016
  %53 = load i64, i64* %15, align 8
  %54 = or i64 %53, %52
  store i64 %54, i64* %15, align 8
  %55 = load i64, i64* %11, align 8
  %56 = lshr i64 %55, 11
  %57 = and i64 %56, 31
  %58 = load i64, i64* %15, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %15, align 8
  %60 = load i64, i64* %15, align 8
  %61 = load %struct.pxafb_info*, %struct.pxafb_info** %14, align 8
  %62 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  store i64 %60, i64* %65, align 8
  br label %126

66:                                               ; preds = %40
  %67 = load i64, i64* %9, align 8
  %68 = shl i64 %67, 8
  %69 = and i64 %68, 16252928
  store i64 %69, i64* %15, align 8
  %70 = load i64, i64* %10, align 8
  %71 = lshr i64 %70, 0
  %72 = and i64 %71, 64512
  %73 = load i64, i64* %15, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %15, align 8
  %75 = load i64, i64* %11, align 8
  %76 = lshr i64 %75, 8
  %77 = and i64 %76, 248
  %78 = load i64, i64* %15, align 8
  %79 = or i64 %78, %77
  store i64 %79, i64* %15, align 8
  %80 = load i64, i64* %15, align 8
  %81 = load %struct.pxafb_info*, %struct.pxafb_info** %14, align 8
  %82 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  store i64 %80, i64* %85, align 8
  br label %126

86:                                               ; preds = %40
  %87 = load i64, i64* %9, align 8
  %88 = shl i64 %87, 8
  %89 = and i64 %88, 16515072
  store i64 %89, i64* %15, align 8
  %90 = load i64, i64* %10, align 8
  %91 = lshr i64 %90, 0
  %92 = and i64 %91, 64512
  %93 = load i64, i64* %15, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %15, align 8
  %95 = load i64, i64* %11, align 8
  %96 = lshr i64 %95, 8
  %97 = and i64 %96, 252
  %98 = load i64, i64* %15, align 8
  %99 = or i64 %98, %97
  store i64 %99, i64* %15, align 8
  %100 = load i64, i64* %15, align 8
  %101 = load %struct.pxafb_info*, %struct.pxafb_info** %14, align 8
  %102 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = load i64, i64* %8, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  store i64 %100, i64* %105, align 8
  br label %126

106:                                              ; preds = %40
  %107 = load i64, i64* %9, align 8
  %108 = shl i64 %107, 8
  %109 = and i64 %108, 16711680
  store i64 %109, i64* %15, align 8
  %110 = load i64, i64* %10, align 8
  %111 = lshr i64 %110, 0
  %112 = and i64 %111, 65280
  %113 = load i64, i64* %15, align 8
  %114 = or i64 %113, %112
  store i64 %114, i64* %15, align 8
  %115 = load i64, i64* %11, align 8
  %116 = lshr i64 %115, 8
  %117 = and i64 %116, 255
  %118 = load i64, i64* %15, align 8
  %119 = or i64 %118, %117
  store i64 %119, i64* %15, align 8
  %120 = load i64, i64* %15, align 8
  %121 = load %struct.pxafb_info*, %struct.pxafb_info** %14, align 8
  %122 = getelementptr inbounds %struct.pxafb_info, %struct.pxafb_info* %121, i32 0, i32 1
  %123 = load i64*, i64** %122, align 8
  %124 = load i64, i64* %8, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  store i64 %120, i64* %125, align 8
  br label %126

126:                                              ; preds = %40, %106, %86, %66, %46
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %126, %31, %23
  %128 = load i32, i32* %7, align 4
  ret i32 %128
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
