; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_bitmap.c___bitmap_shift_left.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_bitmap.c___bitmap_shift_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__bitmap_shift_left(i64* %0, i64* %1, i32 %2, i32 %3) #0 {
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
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @BITS_TO_LONGS(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @BITS_PER_LONG, align 4
  %20 = srem i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @BITS_PER_LONG, align 4
  %23 = sdiv i32 %21, %22
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @BITS_PER_LONG, align 4
  %26 = srem i32 %24, %25
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %12, align 4
  %29 = sub nsw i32 %27, %28
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %109, %4
  %32 = load i32, i32* %9, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %112

34:                                               ; preds = %31
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i32, i32* %9, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i64*, i64** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %41, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %15, align 8
  br label %48

47:                                               ; preds = %37, %34
  store i64 0, i64* %15, align 8
  br label %48

48:                                               ; preds = %47, %40
  %49 = load i64*, i64** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %14, align 8
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = zext i32 %62 to i64
  %64 = shl i64 1, %63
  %65 = sub i64 %64, 1
  %66 = load i64, i64* %14, align 8
  %67 = and i64 %66, %65
  store i64 %67, i64* %14, align 8
  br label %68

68:                                               ; preds = %61, %56, %48
  %69 = load i64, i64* %15, align 8
  %70 = load i32, i32* @BITS_PER_LONG, align 4
  %71 = load i32, i32* %13, align 4
  %72 = sub nsw i32 %70, %71
  %73 = zext i32 %72 to i64
  %74 = lshr i64 %69, %73
  %75 = load i64, i64* %14, align 8
  %76 = load i32, i32* %13, align 4
  %77 = zext i32 %76 to i64
  %78 = shl i64 %75, %77
  %79 = or i64 %74, %78
  %80 = load i64*, i64** %5, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %80, i64 %84
  store i64 %79, i64* %85, align 8
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %68
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32, i32* %10, align 4
  %93 = sub nsw i32 %92, 1
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %108

95:                                               ; preds = %88
  %96 = load i32, i32* %11, align 4
  %97 = zext i32 %96 to i64
  %98 = shl i64 1, %97
  %99 = sub i64 %98, 1
  %100 = load i64*, i64** %5, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %100, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = and i64 %106, %99
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %95, %88, %68
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %9, align 4
  br label %31

112:                                              ; preds = %31
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %112
  %116 = load i64*, i64** %5, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = mul i64 %118, 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @memset(i64* %116, i32 0, i32 %120)
  br label %122

122:                                              ; preds = %115, %112
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
