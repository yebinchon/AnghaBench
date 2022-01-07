; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_move_focus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_mt9t013.c_mt9t013_move_focus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MT9T013_TOTAL_STEPS_NEAR_TO_FAR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@MOVE_NEAR = common dso_local global i32 0, align 4
@MOVE_FAR = common dso_local global i32 0, align 4
@mt9t013_ctrl = common dso_local global %struct.TYPE_2__* null, align 8
@MT9T013_AF_I2C_ADDR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64)* @mt9t013_move_focus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mt9t013_move_focus(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @MT9T013_TOTAL_STEPS_NEAR_TO_FAR, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @MT9T013_TOTAL_STEPS_NEAR_TO_FAR, align 8
  store i64 %17, i64* %5, align 8
  br label %25

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %3, align 8
  br label %132

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %16
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MOVE_NEAR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 4, i32* %6, align 4
  br label %39

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @MOVE_FAR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store i32 -4, i32* %6, align 4
  br label %38

35:                                               ; preds = %30
  %36 = load i64, i64* @EINVAL, align 8
  %37 = sub nsw i64 0, %36
  store i64 %37, i64* %3, align 8
  br label %132

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %29
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9t013_ctrl, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9t013_ctrl, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %39
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9t013_ctrl, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9t013_ctrl, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %47, %39
  %54 = load i32, i32* %6, align 4
  %55 = load i64, i64* %5, align 8
  %56 = trunc i64 %55 to i32
  %57 = mul nsw i32 %54, %56
  store i32 %57, i32* %7, align 4
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %75, %53
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = sdiv i32 %62, 4
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  %66 = mul nsw i32 %63, %65
  %67 = load i32, i32* %7, align 4
  %68 = sdiv i32 %67, 4
  %69 = load i32, i32* %12, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sub nsw i32 %66, %70
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %73
  store i32 %71, i32* %74, align 4
  br label %75

75:                                               ; preds = %61
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %58

78:                                               ; preds = %58
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %128, %78
  %80 = load i32, i32* %12, align 4
  %81 = icmp slt i32 %80, 4
  br i1 %81, label %82, label %131

82:                                               ; preds = %79
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9t013_ctrl, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %85, %89
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp sgt i32 %91, 255
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  store i32 255, i32* %8, align 4
  br label %99

94:                                               ; preds = %82
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 0, i32* %8, align 4
  br label %98

98:                                               ; preds = %97, %94
  br label %99

99:                                               ; preds = %98, %93
  %100 = load i32, i32* %8, align 4
  %101 = ashr i32 %100, 4
  %102 = shl i32 %101, 2
  %103 = load i32, i32* %8, align 4
  %104 = shl i32 %103, 4
  %105 = ashr i32 %104, 6
  %106 = or i32 %102, %105
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %8, align 4
  %108 = and i32 %107, 3
  %109 = shl i32 %108, 6
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* @MT9T013_AF_I2C_ADDR, align 4
  %111 = ashr i32 %110, 1
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i64 @mt9t013_i2c_write_b(i32 %111, i32 %112, i32 %113)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %99
  %117 = load i64, i64* @EBUSY, align 8
  %118 = sub nsw i64 0, %117
  store i64 %118, i64* %3, align 8
  br label %132

119:                                              ; preds = %99
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mt9t013_ctrl, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp slt i32 %123, 3
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = call i32 @mdelay(i32 1)
  br label %127

127:                                              ; preds = %125, %119
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %79

131:                                              ; preds = %79
  store i64 0, i64* %3, align 8
  br label %132

132:                                              ; preds = %131, %116, %35, %21
  %133 = load i64, i64* %3, align 8
  ret i64 %133
}

declare dso_local i64 @mt9t013_i2c_write_b(i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
