; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_moddiv.c_co_reduce.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_moddiv.c_co_reduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i64, i64, i64, i64)* @co_reduce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @co_reduce(i32* %0, i32* %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %15, align 8
  br label %26

26:                                               ; preds = %93, %7
  %27 = load i64, i64* %15, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %96

30:                                               ; preds = %26
  %31 = load i32*, i32** %8, align 8
  %32 = load i64, i64* %15, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %20, align 4
  %35 = load i32*, i32** %9, align 8
  %36 = load i64, i64* %15, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %21, align 4
  %39 = load i32, i32* %20, align 4
  %40 = load i64, i64* %11, align 8
  %41 = trunc i64 %40 to i32
  %42 = mul nsw i32 %39, %41
  %43 = load i32, i32* %21, align 4
  %44 = load i64, i64* %12, align 8
  %45 = trunc i64 %44 to i32
  %46 = mul nsw i32 %43, %45
  %47 = add nsw i32 %42, %46
  %48 = load i64, i64* %16, align 8
  %49 = trunc i64 %48 to i32
  %50 = add nsw i32 %47, %49
  store i32 %50, i32* %22, align 4
  %51 = load i32, i32* %20, align 4
  %52 = load i64, i64* %13, align 8
  %53 = trunc i64 %52 to i32
  %54 = mul nsw i32 %51, %53
  %55 = load i32, i32* %21, align 4
  %56 = load i64, i64* %14, align 8
  %57 = trunc i64 %56 to i32
  %58 = mul nsw i32 %55, %57
  %59 = add nsw i32 %54, %58
  %60 = load i64, i64* %17, align 8
  %61 = trunc i64 %60 to i32
  %62 = add nsw i32 %59, %61
  store i32 %62, i32* %23, align 4
  %63 = load i64, i64* %15, align 8
  %64 = icmp ugt i64 %63, 0
  br i1 %64, label %65, label %78

65:                                               ; preds = %30
  %66 = load i32, i32* %22, align 4
  %67 = and i32 %66, 2147483647
  %68 = load i32*, i32** %8, align 8
  %69 = load i64, i64* %15, align 8
  %70 = sub i64 %69, 1
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* %23, align 4
  %73 = and i32 %72, 2147483647
  %74 = load i32*, i32** %9, align 8
  %75 = load i64, i64* %15, align 8
  %76 = sub i64 %75, 1
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  br label %78

78:                                               ; preds = %65, %30
  %79 = load i32, i32* %22, align 4
  %80 = ashr i32 %79, 31
  store i32 %80, i32* %24, align 4
  %81 = load i32, i32* %23, align 4
  %82 = ashr i32 %81, 31
  store i32 %82, i32* %25, align 4
  %83 = load i32, i32* %24, align 4
  %84 = xor i32 %83, undef
  %85 = sub nsw i32 %84, undef
  store i32 %85, i32* %24, align 4
  %86 = load i32, i32* %25, align 4
  %87 = xor i32 %86, undef
  %88 = sub nsw i32 %87, undef
  store i32 %88, i32* %25, align 4
  %89 = bitcast i32* %24 to i64*
  %90 = load i64, i64* %89, align 4
  store i64 %90, i64* %16, align 8
  %91 = bitcast i32* %25 to i64*
  %92 = load i64, i64* %91, align 4
  store i64 %92, i64* %17, align 8
  br label %93

93:                                               ; preds = %78
  %94 = load i64, i64* %15, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %15, align 8
  br label %26

96:                                               ; preds = %26
  %97 = load i64, i64* %16, align 8
  %98 = trunc i64 %97 to i32
  %99 = load i32*, i32** %8, align 8
  %100 = load i64, i64* %10, align 8
  %101 = sub i64 %100, 1
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %98, i32* %102, align 4
  %103 = load i64, i64* %17, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i32*, i32** %9, align 8
  %106 = load i64, i64* %10, align 8
  %107 = sub i64 %106, 1
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %104, i32* %108, align 4
  %109 = load i64, i64* %16, align 8
  %110 = trunc i64 %109 to i32
  %111 = ashr i32 %110, 63
  store i32 %111, i32* %18, align 4
  %112 = load i64, i64* %17, align 8
  %113 = trunc i64 %112 to i32
  %114 = ashr i32 %113, 63
  store i32 %114, i32* %19, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = load i64, i64* %10, align 8
  %117 = load i32, i32* %18, align 4
  %118 = call i32 @cond_negate(i32* %115, i64 %116, i32 %117)
  %119 = load i32*, i32** %9, align 8
  %120 = load i64, i64* %10, align 8
  %121 = load i32, i32* %19, align 4
  %122 = call i32 @cond_negate(i32* %119, i64 %120, i32 %121)
  %123 = load i32, i32* %18, align 4
  %124 = load i32, i32* %19, align 4
  %125 = shl i32 %124, 1
  %126 = or i32 %123, %125
  ret i32 %126
}

declare dso_local i32 @cond_negate(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
