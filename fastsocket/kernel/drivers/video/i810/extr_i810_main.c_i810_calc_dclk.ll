; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810_main.c_i810_calc_dclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/i810/extr_i810_main.c_i810_calc_dclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*)* @i810_calc_dclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i810_calc_dclk(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
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
  %23 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %21, align 4
  store i32 -1, i32* %22, align 4
  store i32 -1, i32* %23, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %20, align 4
  store i32 30, i32* %12, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %25

25:                                               ; preds = %37, %4
  %26 = load i32, i32* %11, align 4
  %27 = mul nsw i32 1000000, %26
  %28 = load i32, i32* %20, align 4
  %29 = mul nsw i32 384, %28
  %30 = sdiv i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %11, align 4
  %34 = icmp sle i32 %33, 32
  br label %35

35:                                               ; preds = %32, %25
  %36 = phi i1 [ false, %25 ], [ %34, %32 ]
  br i1 %36, label %37, label %42

37:                                               ; preds = %35
  %38 = load i32, i32* %11, align 4
  %39 = shl i32 %38, 1
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %15, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %15, align 4
  br label %25

42:                                               ; preds = %35
  store i32 3, i32* %14, align 4
  store i32 3, i32* %9, align 4
  store i32 3, i32* %10, align 4
  br label %43

43:                                               ; preds = %106, %42
  %44 = load i32, i32* %23, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* %22, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %50, %51
  br label %53

53:                                               ; preds = %49, %46, %43
  %54 = phi i1 [ false, %46 ], [ false, %43 ], [ %52, %49 ]
  br i1 %54, label %55, label %107

55:                                               ; preds = %53
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = mul nsw i32 %56, %57
  %59 = mul nsw i32 %58, 1000000
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 96, %60
  %62 = sdiv i32 %59, %61
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %10, align 4
  %65 = mul nsw i32 %63, %64
  %66 = mul nsw i32 %65, 1000000
  %67 = load i32, i32* %9, align 4
  %68 = mul nsw i32 96, %67
  %69 = srem i32 %66, %68
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %19, align 4
  %73 = load i32, i32* %20, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %55
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %20, align 4
  %79 = load i32, i32* %19, align 4
  %80 = sub nsw i32 %78, %79
  store i32 %80, i32* %21, align 4
  br label %87

81:                                               ; preds = %55
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %20, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %21, align 4
  br label %87

87:                                               ; preds = %81, %75
  %88 = load i32, i32* %23, align 4
  %89 = load i32, i32* %21, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32, i32* %21, align 4
  store i32 %92, i32* %23, align 4
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %17, align 4
  br label %95

95:                                               ; preds = %91, %87
  %96 = load i32, i32* %21, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %22, align 4
  %100 = load i32, i32* %18, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load i32, i32* %18, align 4
  store i32 %103, i32* %22, align 4
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %17, align 4
  br label %106

106:                                              ; preds = %102, %98, %95
  br label %43

107:                                              ; preds = %53
  %108 = load i32*, i32** %6, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32, i32* %17, align 4
  %112 = sub nsw i32 %111, 2
  %113 = and i32 %112, 1023
  %114 = load i32*, i32** %6, align 8
  store i32 %113, i32* %114, align 4
  br label %115

115:                                              ; preds = %110, %107
  %116 = load i32*, i32** %7, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i32, i32* %16, align 4
  %120 = sub nsw i32 %119, 2
  %121 = and i32 %120, 1023
  %122 = load i32*, i32** %7, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %118, %115
  %124 = load i32*, i32** %8, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32, i32* %15, align 4
  %128 = shl i32 %127, 4
  %129 = load i32*, i32** %8, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %126, %123
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
