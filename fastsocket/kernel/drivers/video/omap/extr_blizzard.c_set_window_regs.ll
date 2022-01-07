; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_set_window_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_set_window_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*, i32)*, i32 (i32*, i32)*, i32 (i32)* }

@blizzard = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@BLIZZARD_VERSION_S1D13745 = common dso_local global i64 0, align 8
@BLIZZARD_SRC_WRITE_LCD_BACKGROUND = common dso_local global i32 0, align 4
@OMAPFB_FORMAT_FLAG_ENABLE_OVERLAY = common dso_local global i32 0, align 4
@BLIZZARD_SRC_WRITE_OVERLAY_ENABLE = common dso_local global i32 0, align 4
@BLIZZARD_VERSION_S1D13744 = common dso_local global i64 0, align 8
@BLIZZARD_SRC_WRITE_LCD = common dso_local global i32 0, align 4
@BLIZZARD_SRC_WRITE_LCD_DESTRUCTIVE = common dso_local global i32 0, align 4
@BLIZZARD_INPUT_WIN_X_START_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @set_window_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_window_regs(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [18 x i32], align 16
  %24 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %25 = load i32, i32* %14, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %15, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %12, align 4
  %30 = getelementptr inbounds [18 x i32], [18 x i32]* %23, i64 0, i64 0
  store i32 %29, i32* %30, align 16
  %31 = load i32, i32* %12, align 4
  %32 = ashr i32 %31, 8
  %33 = getelementptr inbounds [18 x i32], [18 x i32]* %23, i64 0, i64 1
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %13, align 4
  %35 = getelementptr inbounds [18 x i32], [18 x i32]* %23, i64 0, i64 2
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %13, align 4
  %37 = ashr i32 %36, 8
  %38 = getelementptr inbounds [18 x i32], [18 x i32]* %23, i64 0, i64 3
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %14, align 4
  %40 = getelementptr inbounds [18 x i32], [18 x i32]* %23, i64 0, i64 4
  store i32 %39, i32* %40, align 16
  %41 = load i32, i32* %14, align 4
  %42 = ashr i32 %41, 8
  %43 = getelementptr inbounds [18 x i32], [18 x i32]* %23, i64 0, i64 5
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %15, align 4
  %45 = getelementptr inbounds [18 x i32], [18 x i32]* %23, i64 0, i64 6
  store i32 %44, i32* %45, align 8
  %46 = load i32, i32* %15, align 4
  %47 = ashr i32 %46, 8
  %48 = getelementptr inbounds [18 x i32], [18 x i32]* %23, i64 0, i64 7
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %18, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %19, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %19, align 4
  %53 = load i32, i32* %16, align 4
  %54 = getelementptr inbounds [18 x i32], [18 x i32]* %23, i64 0, i64 8
  store i32 %53, i32* %54, align 16
  %55 = load i32, i32* %16, align 4
  %56 = ashr i32 %55, 8
  %57 = getelementptr inbounds [18 x i32], [18 x i32]* %23, i64 0, i64 9
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %17, align 4
  %59 = getelementptr inbounds [18 x i32], [18 x i32]* %23, i64 0, i64 10
  store i32 %58, i32* %59, align 8
  %60 = load i32, i32* %17, align 4
  %61 = ashr i32 %60, 8
  %62 = getelementptr inbounds [18 x i32], [18 x i32]* %23, i64 0, i64 11
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %18, align 4
  %64 = getelementptr inbounds [18 x i32], [18 x i32]* %23, i64 0, i64 12
  store i32 %63, i32* %64, align 16
  %65 = load i32, i32* %18, align 4
  %66 = ashr i32 %65, 8
  %67 = getelementptr inbounds [18 x i32], [18 x i32]* %23, i64 0, i64 13
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %19, align 4
  %69 = getelementptr inbounds [18 x i32], [18 x i32]* %23, i64 0, i64 14
  store i32 %68, i32* %69, align 8
  %70 = load i32, i32* %19, align 4
  %71 = ashr i32 %70, 8
  %72 = getelementptr inbounds [18 x i32], [18 x i32]* %23, i64 0, i64 15
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %20, align 4
  %74 = getelementptr inbounds [18 x i32], [18 x i32]* %23, i64 0, i64 16
  store i32 %73, i32* %74, align 16
  %75 = load i32, i32* %21, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %11
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 0), align 8
  %79 = load i64, i64* @BLIZZARD_VERSION_S1D13745, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @BLIZZARD_SRC_WRITE_LCD_BACKGROUND, align 4
  %83 = getelementptr inbounds [18 x i32], [18 x i32]* %23, i64 0, i64 17
  store i32 %82, i32* %83, align 4
  br label %104

84:                                               ; preds = %77, %11
  %85 = load i32, i32* %22, align 4
  %86 = load i32, i32* @OMAPFB_FORMAT_FLAG_ENABLE_OVERLAY, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @BLIZZARD_SRC_WRITE_OVERLAY_ENABLE, align 4
  %91 = getelementptr inbounds [18 x i32], [18 x i32]* %23, i64 0, i64 17
  store i32 %90, i32* %91, align 4
  br label %103

92:                                               ; preds = %84
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 0), align 8
  %94 = load i64, i64* @BLIZZARD_VERSION_S1D13744, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @BLIZZARD_SRC_WRITE_LCD, align 4
  br label %100

98:                                               ; preds = %92
  %99 = load i32, i32* @BLIZZARD_SRC_WRITE_LCD_DESTRUCTIVE, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = getelementptr inbounds [18 x i32], [18 x i32]* %23, i64 0, i64 17
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %100, %89
  br label %104

104:                                              ; preds = %103, %81
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 1), align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 2
  %107 = load i32 (i32)*, i32 (i32)** %106, align 8
  %108 = call i32 %107(i32 8)
  %109 = load i32, i32* @BLIZZARD_INPUT_WIN_X_START_0, align 4
  store i32 %109, i32* %24, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 1), align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32 (i32*, i32)*, i32 (i32*, i32)** %111, align 8
  %113 = call i32 %112(i32* %24, i32 1)
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @blizzard, i32 0, i32 1), align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32 (i32*, i32)*, i32 (i32*, i32)** %115, align 8
  %117 = getelementptr inbounds [18 x i32], [18 x i32]* %23, i64 0, i64 0
  %118 = call i32 %116(i32* %117, i32 18)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
