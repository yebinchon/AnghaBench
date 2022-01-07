; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/lib/extr_bitmap.c___reg_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/lib/extr_bitmap.c___reg_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITS_PER_LONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32, i32)* @__reg_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__reg_op(i64* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = shl i32 1, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @BITS_PER_LONG, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @BITS_PER_LONG, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sub nsw i32 %22, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @BITS_TO_LONGS(i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @BITS_PER_LONG, align 4
  %31 = call i32 @min(i32 %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = sub nsw i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = shl i64 1, %34
  store i64 %35, i64* %14, align 8
  %36 = load i64, i64* %14, align 8
  %37 = sub i64 %36, 1
  %38 = load i64, i64* %14, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %14, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i64, i64* %14, align 8
  %42 = zext i32 %40 to i64
  %43 = shl i64 %41, %42
  store i64 %43, i64* %14, align 8
  %44 = load i32, i32* %8, align 4
  switch i32 %44, label %106 [
    i32 129, label %45
    i32 130, label %67
    i32 128, label %86
  ]

45:                                               ; preds = %4
  store i32 0, i32* %15, align 4
  br label %46

46:                                               ; preds = %63, %45
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load i64*, i64** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %51, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %14, align 8
  %59 = and i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %107

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %46

66:                                               ; preds = %46
  store i32 1, i32* %16, align 4
  br label %106

67:                                               ; preds = %4
  store i32 0, i32* %15, align 4
  br label %68

68:                                               ; preds = %82, %67
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load i64, i64* %14, align 8
  %74 = load i64*, i64** %5, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %15, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %74, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = or i64 %80, %73
  store i64 %81, i64* %79, align 8
  br label %82

82:                                               ; preds = %72
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %15, align 4
  br label %68

85:                                               ; preds = %68
  br label %106

86:                                               ; preds = %4
  store i32 0, i32* %15, align 4
  br label %87

87:                                               ; preds = %102, %86
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load i64, i64* %14, align 8
  %93 = xor i64 %92, -1
  %94 = load i64*, i64** %5, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i64, i64* %94, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = and i64 %100, %93
  store i64 %101, i64* %99, align 8
  br label %102

102:                                              ; preds = %91
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  br label %87

105:                                              ; preds = %87
  br label %106

106:                                              ; preds = %4, %105, %85, %66
  br label %107

107:                                              ; preds = %106, %61
  %108 = load i32, i32* %16, align 4
  ret i32 %108
}

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
