; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i32_montmul.c_br_i32_montymul.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i32_montmul.c_br_i32_montymul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_i32_montymul(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 31
  %26 = ashr i32 %25, 5
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %11, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @br_i32_zero(i32* %28, i32 %31)
  store i32 0, i32* %14, align 4
  store i64 0, i64* %12, align 8
  br label %33

33:                                               ; preds = %117, %5
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %11, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %120

37:                                               ; preds = %33
  %38 = load i32*, i32** %7, align 8
  %39 = load i64, i64* %12, align 8
  %40 = add i64 %39, 1
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %16, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %47, 1
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = add nsw i32 %45, %54
  %56 = load i32, i32* %10, align 4
  %57 = mul nsw i32 %55, %56
  store i32 %57, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i64 0, i64* %13, align 8
  br label %58

58:                                               ; preds = %102, %37
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %105

62:                                               ; preds = %58
  %63 = load i32*, i32** %6, align 8
  %64 = load i64, i64* %13, align 8
  %65 = add i64 %64, 1
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = load i64, i64* %13, align 8
  %71 = add i64 %70, 1
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @MUL(i32 %68, i32 %73)
  %75 = add nsw i32 %67, %74
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %20, align 4
  %78 = load i32, i32* %20, align 4
  %79 = ashr i32 %78, 32
  store i32 %79, i32* %17, align 4
  %80 = load i32, i32* %20, align 4
  store i32 %80, i32* %21, align 4
  %81 = load i32, i32* %21, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32*, i32** %9, align 8
  %84 = load i64, i64* %13, align 8
  %85 = add i64 %84, 1
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @MUL(i32 %82, i32 %87)
  %89 = add nsw i32 %81, %88
  %90 = load i32, i32* %18, align 4
  %91 = add nsw i32 %89, %90
  store i32 %91, i32* %20, align 4
  %92 = load i32, i32* %20, align 4
  %93 = ashr i32 %92, 32
  store i32 %93, i32* %18, align 4
  %94 = load i64, i64* %13, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %62
  %97 = load i32, i32* %20, align 4
  %98 = load i32*, i32** %6, align 8
  %99 = load i64, i64* %13, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 %97, i32* %100, align 4
  br label %101

101:                                              ; preds = %96, %62
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %13, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %13, align 8
  br label %58

105:                                              ; preds = %58
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %17, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* %18, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* %19, align 4
  %112 = load i32*, i32** %6, align 8
  %113 = load i64, i64* %11, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* %19, align 4
  %116 = ashr i32 %115, 32
  store i32 %116, i32* %14, align 4
  br label %117

117:                                              ; preds = %105
  %118 = load i64, i64* %12, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %12, align 8
  br label %33

120:                                              ; preds = %33
  %121 = load i32*, i32** %6, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = load i32, i32* %14, align 4
  %124 = call i32 @NEQ(i32 %123, i32 0)
  %125 = load i32*, i32** %6, align 8
  %126 = load i32*, i32** %9, align 8
  %127 = call i32 @br_i32_sub(i32* %125, i32* %126, i32 0)
  %128 = call i32 @NOT(i32 %127)
  %129 = or i32 %124, %128
  %130 = call i32 @br_i32_sub(i32* %121, i32* %122, i32 %129)
  ret void
}

declare dso_local i32 @br_i32_zero(i32*, i32) #1

declare dso_local i32 @MUL(i32, i32) #1

declare dso_local i32 @br_i32_sub(i32*, i32*, i32) #1

declare dso_local i32 @NEQ(i32, i32) #1

declare dso_local i32 @NOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
