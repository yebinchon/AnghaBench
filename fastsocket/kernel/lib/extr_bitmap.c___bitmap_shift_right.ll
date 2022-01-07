; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_bitmap.c___bitmap_shift_right.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_bitmap.c___bitmap_shift_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__bitmap_shift_right(i64* %0, i64* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @BITS_TO_LONGS(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @BITS_PER_LONG, align 4
  %21 = srem i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @BITS_PER_LONG, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @BITS_PER_LONG, align 4
  %27 = srem i32 %25, %26
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %11, align 4
  %29 = zext i32 %28 to i64
  %30 = shl i64 1, %29
  %31 = sub i64 %30, 1
  store i64 %31, i64* %14, align 8
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %126, %4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %129

38:                                               ; preds = %32
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %42, %43
  %45 = add nsw i32 %44, 1
  %46 = load i32, i32* %10, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41, %38
  store i64 0, i64* %15, align 8
  br label %73

49:                                               ; preds = %41
  %50 = load i64*, i64** %6, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %51, %52
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %50, i64 %55
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %15, align 8
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %58, %59
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 %62, 1
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %49
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %15, align 8
  %71 = and i64 %70, %69
  store i64 %71, i64* %15, align 8
  br label %72

72:                                               ; preds = %68, %65, %49
  br label %73

73:                                               ; preds = %72, %48
  %74 = load i64*, i64** %6, align 8
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %9, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %74, i64 %78
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %16, align 8
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %73
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %84, %85
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %87, 1
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* %16, align 8
  %93 = and i64 %92, %91
  store i64 %93, i64* %16, align 8
  br label %94

94:                                               ; preds = %90, %83, %73
  %95 = load i64, i64* %15, align 8
  %96 = load i32, i32* @BITS_PER_LONG, align 4
  %97 = load i32, i32* %13, align 4
  %98 = sub nsw i32 %96, %97
  %99 = zext i32 %98 to i64
  %100 = shl i64 %95, %99
  %101 = load i64, i64* %16, align 8
  %102 = load i32, i32* %13, align 4
  %103 = zext i32 %102 to i64
  %104 = lshr i64 %101, %103
  %105 = or i64 %100, %104
  %106 = load i64*, i64** %5, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  store i64 %105, i64* %109, align 8
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %94
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %10, align 4
  %115 = sub nsw i32 %114, 1
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load i64, i64* %14, align 8
  %119 = load i64*, i64** %5, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = and i64 %123, %118
  store i64 %124, i64* %122, align 8
  br label %125

125:                                              ; preds = %117, %112, %94
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %9, align 4
  br label %32

129:                                              ; preds = %32
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %129
  %133 = load i64*, i64** %5, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %12, align 4
  %136 = sub nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64, i64* %133, i64 %137
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = mul i64 %140, 8
  %142 = trunc i64 %141 to i32
  %143 = call i32 @memset(i64* %138, i32 0, i32 %142)
  br label %144

144:                                              ; preds = %132, %129
  ret void
}

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
