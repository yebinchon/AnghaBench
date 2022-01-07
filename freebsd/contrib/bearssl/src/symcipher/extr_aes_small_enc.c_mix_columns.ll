; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_small_enc.c_mix_columns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_small_enc.c_mix_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @mix_columns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mix_columns(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %128, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 16
  br i1 %14, label %15, label %131

15:                                               ; preds = %12
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 0
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 3
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %4, align 4
  %41 = shl i32 %40, 1
  %42 = load i32, i32* %5, align 4
  %43 = xor i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = shl i32 %44, 1
  %46 = xor i32 %43, %45
  %47 = load i32, i32* %6, align 4
  %48 = xor i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = xor i32 %48, %49
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = shl i32 %52, 1
  %54 = xor i32 %51, %53
  %55 = load i32, i32* %6, align 4
  %56 = xor i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = shl i32 %57, 1
  %59 = xor i32 %56, %58
  %60 = load i32, i32* %7, align 4
  %61 = xor i32 %59, %60
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %5, align 4
  %64 = xor i32 %62, %63
  %65 = load i32, i32* %6, align 4
  %66 = shl i32 %65, 1
  %67 = xor i32 %64, %66
  %68 = load i32, i32* %7, align 4
  %69 = xor i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = shl i32 %70, 1
  %72 = xor i32 %69, %71
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = shl i32 %74, 1
  %76 = xor i32 %73, %75
  %77 = load i32, i32* %5, align 4
  %78 = xor i32 %76, %77
  %79 = load i32, i32* %6, align 4
  %80 = xor i32 %78, %79
  %81 = load i32, i32* %7, align 4
  %82 = shl i32 %81, 1
  %83 = xor i32 %80, %82
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = lshr i32 %85, 8
  %87 = sub nsw i32 0, %86
  %88 = and i32 %87, 283
  %89 = xor i32 %84, %88
  %90 = load i32*, i32** %2, align 8
  %91 = load i32, i32* %3, align 4
  %92 = add nsw i32 %91, 0
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32 %89, i32* %94, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = lshr i32 %96, 8
  %98 = sub nsw i32 0, %97
  %99 = and i32 %98, 283
  %100 = xor i32 %95, %99
  %101 = load i32*, i32** %2, align 8
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  store i32 %100, i32* %105, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = lshr i32 %107, 8
  %109 = sub nsw i32 0, %108
  %110 = and i32 %109, 283
  %111 = xor i32 %106, %110
  %112 = load i32*, i32** %2, align 8
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 2
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  store i32 %111, i32* %116, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = lshr i32 %118, 8
  %120 = sub nsw i32 0, %119
  %121 = and i32 %120, 283
  %122 = xor i32 %117, %121
  %123 = load i32*, i32** %2, align 8
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 3
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  store i32 %122, i32* %127, align 4
  br label %128

128:                                              ; preds = %15
  %129 = load i32, i32* %3, align 4
  %130 = add nsw i32 %129, 4
  store i32 %130, i32* %3, align 4
  br label %12

131:                                              ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
