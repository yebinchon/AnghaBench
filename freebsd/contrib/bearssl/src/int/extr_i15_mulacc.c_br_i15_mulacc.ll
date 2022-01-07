; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i15_mulacc.c_br_i15_mulacc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i15_mulacc.c_br_i15_mulacc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_i15_mulacc(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 15
  %20 = ashr i32 %19, 4
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 15
  %26 = ashr i32 %25, 4
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %8, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 15
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 15
  %36 = add nsw i32 %31, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 4
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 4
  %45 = add nsw i32 %40, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 %46, 4
  %48 = load i32, i32* %10, align 4
  %49 = add i32 %47, %48
  %50 = load i32, i32* %10, align 4
  %51 = sub i32 %50, 15
  %52 = xor i32 %51, -1
  %53 = ashr i32 %52, 31
  %54 = add i32 %49, %53
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 %54, i32* %56, align 4
  store i64 0, i64* %9, align 8
  br label %57

57:                                               ; preds = %110, %3
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %8, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %113

61:                                               ; preds = %57
  %62 = load i32*, i32** %6, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add i64 1, %63
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i64 0, i64* %13, align 8
  br label %67

67:                                               ; preds = %99, %61
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %102

71:                                               ; preds = %67
  %72 = load i32*, i32** %4, align 8
  %73 = load i64, i64* %9, align 8
  %74 = add i64 1, %73
  %75 = load i64, i64* %13, align 8
  %76 = add i64 %74, %75
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = load i64, i64* %13, align 8
  %82 = add i64 1, %81
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @MUL15(i32 %79, i32 %84)
  %86 = add nsw i32 %78, %85
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %86, %87
  store i32 %88, i32* %15, align 4
  %89 = load i32, i32* %15, align 4
  %90 = ashr i32 %89, 15
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %15, align 4
  %92 = and i32 %91, 32767
  %93 = load i32*, i32** %4, align 8
  %94 = load i64, i64* %9, align 8
  %95 = add i64 1, %94
  %96 = load i64, i64* %13, align 8
  %97 = add i64 %95, %96
  %98 = getelementptr inbounds i32, i32* %93, i64 %97
  store i32 %92, i32* %98, align 4
  br label %99

99:                                               ; preds = %71
  %100 = load i64, i64* %13, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %13, align 8
  br label %67

102:                                              ; preds = %67
  %103 = load i32, i32* %14, align 4
  %104 = load i32*, i32** %4, align 8
  %105 = load i64, i64* %9, align 8
  %106 = add i64 1, %105
  %107 = load i64, i64* %7, align 8
  %108 = add i64 %106, %107
  %109 = getelementptr inbounds i32, i32* %104, i64 %108
  store i32 %103, i32* %109, align 4
  br label %110

110:                                              ; preds = %102
  %111 = load i64, i64* %9, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %9, align 8
  br label %57

113:                                              ; preds = %57
  ret void
}

declare dso_local i32 @MUL15(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
