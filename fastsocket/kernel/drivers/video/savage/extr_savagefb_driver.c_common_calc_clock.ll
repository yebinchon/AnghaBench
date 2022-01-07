; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_driver.c_common_calc_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/savage/extr_savagefb_driver.c_common_calc_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HALF_BASE_FREQ = common dso_local global i64 0, align 8
@BASE_FREQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i32, i32, i32, i64, i64, i8*, i8*)* @common_calc_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_calc_clock(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i64 %7, i8* %8, i8* %9) #0 {
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  %26 = alloca i8, align 1
  %27 = alloca i8, align 1
  %28 = alloca i8, align 1
  store i64 %0, i64* %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i64 %6, i64* %17, align 8
  store i64 %7, i64* %18, align 8
  store i8* %8, i8** %19, align 8
  store i8* %9, i8** %20, align 8
  store i8 18, i8* %26, align 1
  store i8 2, i8* %27, align 1
  store i8 127, i8* %28, align 1
  %29 = load i64, i64* %11, align 8
  store i64 %29, i64* %22, align 8
  %30 = load i32, i32* %15, align 4
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %25, align 1
  br label %32

32:                                               ; preds = %126, %10
  %33 = load i8, i8* %25, align 1
  %34 = zext i8 %33 to i32
  %35 = load i32, i32* %16, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %129

37:                                               ; preds = %32
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, 2
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %24, align 1
  br label %41

41:                                               ; preds = %122, %37
  %42 = load i8, i8* %24, align 1
  %43 = zext i8 %42 to i32
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %44, 2
  %46 = icmp sle i32 %43, %45
  br i1 %46, label %47, label %125

47:                                               ; preds = %41
  %48 = load i64, i64* %11, align 8
  %49 = load i8, i8* %24, align 1
  %50 = zext i8 %49 to i64
  %51 = mul nsw i64 %48, %50
  %52 = load i8, i8* %25, align 1
  %53 = zext i8 %52 to i32
  %54 = shl i32 1, %53
  %55 = sext i32 %54 to i64
  %56 = mul nsw i64 %51, %55
  %57 = load i64, i64* @HALF_BASE_FREQ, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i64, i64* @BASE_FREQ, align 8
  %60 = sdiv i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %23, align 4
  %62 = load i32, i32* %23, align 4
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 2
  %65 = icmp ult i32 %62, %64
  br i1 %65, label %69, label %66

66:                                               ; preds = %47
  %67 = load i32, i32* %23, align 4
  %68 = icmp ugt i32 %67, 129
  br i1 %68, label %69, label %70

69:                                               ; preds = %66, %47
  br label %122

70:                                               ; preds = %66
  %71 = load i32, i32* %23, align 4
  %72 = zext i32 %71 to i64
  %73 = load i64, i64* @BASE_FREQ, align 8
  %74 = mul nsw i64 %72, %73
  %75 = load i64, i64* %17, align 8
  %76 = load i8, i8* %24, align 1
  %77 = zext i8 %76 to i64
  %78 = mul nsw i64 %75, %77
  %79 = icmp sge i64 %74, %78
  br i1 %79, label %80, label %121

80:                                               ; preds = %70
  %81 = load i32, i32* %23, align 4
  %82 = zext i32 %81 to i64
  %83 = load i64, i64* @BASE_FREQ, align 8
  %84 = mul nsw i64 %82, %83
  %85 = load i64, i64* %18, align 8
  %86 = load i8, i8* %24, align 1
  %87 = zext i8 %86 to i64
  %88 = mul nsw i64 %85, %87
  %89 = icmp sle i64 %84, %88
  br i1 %89, label %90, label %121

90:                                               ; preds = %80
  %91 = load i64, i64* %11, align 8
  %92 = load i8, i8* %25, align 1
  %93 = zext i8 %92 to i32
  %94 = shl i32 1, %93
  %95 = sext i32 %94 to i64
  %96 = mul nsw i64 %91, %95
  %97 = load i8, i8* %24, align 1
  %98 = zext i8 %97 to i64
  %99 = mul nsw i64 %96, %98
  %100 = load i64, i64* @BASE_FREQ, align 8
  %101 = load i32, i32* %23, align 4
  %102 = zext i32 %101 to i64
  %103 = mul nsw i64 %100, %102
  %104 = sub nsw i64 %99, %103
  store i64 %104, i64* %21, align 8
  %105 = load i64, i64* %21, align 8
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %90
  %108 = load i64, i64* %21, align 8
  %109 = sub nsw i64 0, %108
  store i64 %109, i64* %21, align 8
  br label %110

110:                                              ; preds = %107, %90
  %111 = load i64, i64* %21, align 8
  %112 = load i64, i64* %22, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load i64, i64* %21, align 8
  store i64 %115, i64* %22, align 8
  %116 = load i32, i32* %23, align 4
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %28, align 1
  %118 = load i8, i8* %24, align 1
  store i8 %118, i8* %26, align 1
  %119 = load i8, i8* %25, align 1
  store i8 %119, i8* %27, align 1
  br label %120

120:                                              ; preds = %114, %110
  br label %121

121:                                              ; preds = %120, %80, %70
  br label %122

122:                                              ; preds = %121, %69
  %123 = load i8, i8* %24, align 1
  %124 = add i8 %123, 1
  store i8 %124, i8* %24, align 1
  br label %41

125:                                              ; preds = %41
  br label %126

126:                                              ; preds = %125
  %127 = load i8, i8* %25, align 1
  %128 = add i8 %127, 1
  store i8 %128, i8* %25, align 1
  br label %32

129:                                              ; preds = %32
  %130 = load i32, i32* %14, align 4
  %131 = icmp eq i32 %130, 63
  br i1 %131, label %132, label %142

132:                                              ; preds = %129
  %133 = load i8, i8* %26, align 1
  %134 = zext i8 %133 to i32
  %135 = sub nsw i32 %134, 2
  %136 = load i8, i8* %27, align 1
  %137 = zext i8 %136 to i32
  %138 = shl i32 %137, 6
  %139 = or i32 %135, %138
  %140 = trunc i32 %139 to i8
  %141 = load i8*, i8** %20, align 8
  store i8 %140, i8* %141, align 1
  br label %152

142:                                              ; preds = %129
  %143 = load i8, i8* %26, align 1
  %144 = zext i8 %143 to i32
  %145 = sub nsw i32 %144, 2
  %146 = load i8, i8* %27, align 1
  %147 = zext i8 %146 to i32
  %148 = shl i32 %147, 5
  %149 = or i32 %145, %148
  %150 = trunc i32 %149 to i8
  %151 = load i8*, i8** %20, align 8
  store i8 %150, i8* %151, align 1
  br label %152

152:                                              ; preds = %142, %132
  %153 = load i8, i8* %28, align 1
  %154 = zext i8 %153 to i32
  %155 = sub nsw i32 %154, 2
  %156 = trunc i32 %155 to i8
  %157 = load i8*, i8** %19, align 8
  store i8 %156, i8* %157, align 1
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
