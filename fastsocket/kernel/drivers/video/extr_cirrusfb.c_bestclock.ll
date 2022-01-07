; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cirrusfb.c_bestclock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_cirrusfb.c_bestclock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*, i32*, i32*)* @bestclock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bestclock(i64 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32*, i32** %6, align 8
  store i32 0, i32* %27, align 4
  %28 = load i32*, i32** %7, align 8
  store i32 0, i32* %28, align 4
  %29 = load i32*, i32** %8, align 8
  store i32 0, i32* %29, align 4
  %30 = load i64, i64* %5, align 8
  %31 = icmp slt i64 %30, 8000
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i64 8000, i64* %5, align 8
  br label %33

33:                                               ; preds = %32, %4
  %34 = load i64, i64* %5, align 8
  store i64 %34, i64* %12, align 8
  store i32 32, i32* %9, align 4
  br label %35

35:                                               ; preds = %138, %33
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 128
  br i1 %37, label %38, label %141

38:                                               ; preds = %35
  store i32 0, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 14318, %39
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %5, align 8
  %43 = sdiv i64 %41, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sge i32 %45, 7
  br i1 %46, label %47, label %90

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = icmp sle i32 %48, 63
  br i1 %49, label %50, label %90

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp sgt i32 %52, 31
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  store i32 1, i32* %13, align 4
  %55 = load i32, i32* %14, align 4
  %56 = ashr i32 %55, 1
  store i32 %56, i32* %14, align 4
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 14318, %58
  %60 = load i32, i32* %14, align 4
  %61 = sdiv i32 %59, %60
  %62 = load i32, i32* %13, align 4
  %63 = ashr i32 %61, %62
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %11, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %57
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %5, align 8
  %71 = sub nsw i64 %69, %70
  br label %76

72:                                               ; preds = %57
  %73 = load i64, i64* %5, align 8
  %74 = load i64, i64* %11, align 8
  %75 = sub nsw i64 %73, %74
  br label %76

76:                                               ; preds = %72, %68
  %77 = phi i64 [ %71, %68 ], [ %75, %72 ]
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %12, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = load i64, i64* %11, align 8
  store i64 %82, i64* %12, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32*, i32** %6, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %14, align 4
  %86 = load i32*, i32** %7, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32*, i32** %8, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %81, %76
  br label %90

90:                                               ; preds = %89, %47, %38
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp sge i32 %93, 7
  br i1 %94, label %95, label %137

95:                                               ; preds = %90
  %96 = load i32, i32* %10, align 4
  %97 = icmp sle i32 %96, 63
  br i1 %97, label %98, label %137

98:                                               ; preds = %95
  %99 = load i32, i32* %10, align 4
  %100 = icmp sgt i32 %99, 31
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  store i32 1, i32* %13, align 4
  %102 = load i32, i32* %10, align 4
  %103 = ashr i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %9, align 4
  %106 = mul nsw i32 14318, %105
  %107 = load i32, i32* %10, align 4
  %108 = sdiv i32 %106, %107
  %109 = load i32, i32* %13, align 4
  %110 = ashr i32 %108, %109
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %11, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load i64, i64* %5, align 8
  %114 = icmp sgt i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %104
  %116 = load i64, i64* %11, align 8
  %117 = load i64, i64* %5, align 8
  %118 = sub nsw i64 %116, %117
  br label %123

119:                                              ; preds = %104
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* %11, align 8
  %122 = sub nsw i64 %120, %121
  br label %123

123:                                              ; preds = %119, %115
  %124 = phi i64 [ %118, %115 ], [ %122, %119 ]
  store i64 %124, i64* %11, align 8
  %125 = load i64, i64* %11, align 8
  %126 = load i64, i64* %12, align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %123
  %129 = load i64, i64* %11, align 8
  store i64 %129, i64* %12, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32*, i32** %6, align 8
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32*, i32** %7, align 8
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* %13, align 4
  %135 = load i32*, i32** %8, align 8
  store i32 %134, i32* %135, align 4
  br label %136

136:                                              ; preds = %128, %123
  br label %137

137:                                              ; preds = %136, %95, %90
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %35

141:                                              ; preds = %35
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
