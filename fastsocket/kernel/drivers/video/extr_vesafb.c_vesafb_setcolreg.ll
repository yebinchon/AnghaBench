; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_vesafb.c_vesafb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_vesafb.c_vesafb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_10__, i64, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @vesafb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vesafb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp uge i32 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %128

22:                                               ; preds = %6
  %23 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 8
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @vesa_setpalette(i32 %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %14, align 4
  br label %126

34:                                               ; preds = %22
  %35 = load i32, i32* %8, align 4
  %36 = icmp ult i32 %35, 16
  br i1 %36, label %37, label %125

37:                                               ; preds = %34
  %38 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %124 [
    i32 16, label %42
    i32 24, label %87
    i32 32, label %87
  ]

42:                                               ; preds = %37
  %43 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 10
  br i1 %48, label %49, label %68

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 63488
  %52 = lshr i32 %51, 1
  %53 = load i32, i32* %10, align 4
  %54 = and i32 %53, 63488
  %55 = lshr i32 %54, 6
  %56 = or i32 %52, %55
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %57, 63488
  %59 = lshr i32 %58, 11
  %60 = or i32 %56, %59
  %61 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %62 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %60, i32* %67, align 4
  br label %86

68:                                               ; preds = %42
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 63488
  %71 = load i32, i32* %10, align 4
  %72 = and i32 %71, 64512
  %73 = lshr i32 %72, 5
  %74 = or i32 %70, %73
  %75 = load i32, i32* %11, align 4
  %76 = and i32 %75, 63488
  %77 = lshr i32 %76, 11
  %78 = or i32 %74, %77
  %79 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i32*
  %83 = load i32, i32* %8, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %78, i32* %85, align 4
  br label %86

86:                                               ; preds = %68, %49
  br label %124

87:                                               ; preds = %37, %37
  %88 = load i32, i32* %9, align 4
  %89 = lshr i32 %88, 8
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = lshr i32 %90, 8
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = lshr i32 %92, 8
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %96 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %94, %99
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %103 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = shl i32 %101, %106
  %108 = or i32 %100, %107
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %111 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %109, %114
  %116 = or i32 %108, %115
  %117 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %118 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i32*
  %121 = load i32, i32* %8, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %116, i32* %123, align 4
  br label %124

124:                                              ; preds = %37, %87, %86
  br label %125

125:                                              ; preds = %124, %34
  br label %126

126:                                              ; preds = %125, %28
  %127 = load i32, i32* %14, align 4
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %126, %21
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local i32 @vesa_setpalette(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
