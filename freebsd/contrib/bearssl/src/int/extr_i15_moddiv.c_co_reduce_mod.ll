; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i15_moddiv.c_co_reduce_mod.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i15_moddiv.c_co_reduce_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i32, i32, i32, i32, i32*, i32)* @co_reduce_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @co_reduce_mod(i32* %0, i32* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32* %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %13, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32*, i32** %11, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %14, align 4
  %39 = mul nsw i32 %37, %38
  %40 = add nsw i32 %34, %39
  %41 = load i32, i32* %18, align 4
  %42 = mul nsw i32 %40, %41
  %43 = and i32 %42, 32767
  store i32 %43, i32* %22, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %15, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %16, align 4
  %53 = mul nsw i32 %51, %52
  %54 = add nsw i32 %48, %53
  %55 = load i32, i32* %18, align 4
  %56 = mul nsw i32 %54, %55
  %57 = and i32 %56, 32767
  store i32 %57, i32* %23, align 4
  store i64 0, i64* %19, align 8
  br label %58

58:                                               ; preds = %131, %9
  %59 = load i64, i64* %19, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %134

62:                                               ; preds = %58
  %63 = load i32*, i32** %10, align 8
  %64 = load i64, i64* %19, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %24, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = load i64, i64* %19, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %25, align 4
  %71 = load i32, i32* %24, align 4
  %72 = load i32, i32* %13, align 4
  %73 = mul nsw i32 %71, %72
  %74 = load i32, i32* %25, align 4
  %75 = load i32, i32* %14, align 4
  %76 = mul nsw i32 %74, %75
  %77 = add nsw i32 %73, %76
  %78 = load i32*, i32** %17, align 8
  %79 = load i64, i64* %19, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %22, align 4
  %83 = mul nsw i32 %81, %82
  %84 = add nsw i32 %77, %83
  %85 = load i32, i32* %20, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %26, align 4
  %87 = load i32, i32* %24, align 4
  %88 = load i32, i32* %15, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %25, align 4
  %91 = load i32, i32* %16, align 4
  %92 = mul nsw i32 %90, %91
  %93 = add nsw i32 %89, %92
  %94 = load i32*, i32** %17, align 8
  %95 = load i64, i64* %19, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %23, align 4
  %99 = mul nsw i32 %97, %98
  %100 = add nsw i32 %93, %99
  %101 = load i32, i32* %21, align 4
  %102 = add nsw i32 %100, %101
  store i32 %102, i32* %27, align 4
  %103 = load i64, i64* %19, align 8
  %104 = icmp ugt i64 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %62
  %106 = load i32, i32* %26, align 4
  %107 = and i32 %106, 32767
  %108 = load i32*, i32** %10, align 8
  %109 = load i64, i64* %19, align 8
  %110 = sub i64 %109, 1
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %107, i32* %111, align 4
  %112 = load i32, i32* %27, align 4
  %113 = and i32 %112, 32767
  %114 = load i32*, i32** %11, align 8
  %115 = load i64, i64* %19, align 8
  %116 = sub i64 %115, 1
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 %113, i32* %117, align 4
  br label %118

118:                                              ; preds = %105, %62
  %119 = load i32, i32* %26, align 4
  %120 = ashr i32 %119, 15
  store i32 %120, i32* %28, align 4
  %121 = load i32, i32* %27, align 4
  %122 = ashr i32 %121, 15
  store i32 %122, i32* %29, align 4
  %123 = load i32, i32* %28, align 4
  %124 = xor i32 %123, 65536
  %125 = sub nsw i32 %124, 65536
  store i32 %125, i32* %28, align 4
  %126 = load i32, i32* %29, align 4
  %127 = xor i32 %126, 65536
  %128 = sub nsw i32 %127, 65536
  store i32 %128, i32* %29, align 4
  %129 = load i32, i32* %28, align 4
  store i32 %129, i32* %20, align 4
  %130 = load i32, i32* %29, align 4
  store i32 %130, i32* %21, align 4
  br label %131

131:                                              ; preds = %118
  %132 = load i64, i64* %19, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %19, align 8
  br label %58

134:                                              ; preds = %58
  %135 = load i32, i32* %20, align 4
  %136 = load i32*, i32** %10, align 8
  %137 = load i64, i64* %12, align 8
  %138 = sub i64 %137, 1
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %135, i32* %139, align 4
  %140 = load i32, i32* %21, align 4
  %141 = load i32*, i32** %11, align 8
  %142 = load i64, i64* %12, align 8
  %143 = sub i64 %142, 1
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %140, i32* %144, align 4
  %145 = load i32*, i32** %10, align 8
  %146 = load i64, i64* %12, align 8
  %147 = load i32*, i32** %17, align 8
  %148 = load i32, i32* %20, align 4
  %149 = ashr i32 %148, 31
  %150 = call i32 @finish_mod(i32* %145, i64 %146, i32* %147, i32 %149)
  %151 = load i32*, i32** %11, align 8
  %152 = load i64, i64* %12, align 8
  %153 = load i32*, i32** %17, align 8
  %154 = load i32, i32* %21, align 4
  %155 = ashr i32 %154, 31
  %156 = call i32 @finish_mod(i32* %151, i64 %152, i32* %153, i32 %155)
  ret void
}

declare dso_local i32 @finish_mod(i32*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
