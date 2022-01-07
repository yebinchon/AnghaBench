; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_ghash_ctmul32.c_bmul32.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/hash/extr_ghash_ctmul32.c_bmul32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @bmul32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmul32(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 286331153
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, 572662306
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 1145324612
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, -2004318072
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 286331153
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 572662306
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 1145324612
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, -2004318072
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %9, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %12, align 4
  %38 = mul nsw i32 %36, %37
  %39 = xor i32 %35, %38
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %11, align 4
  %42 = mul nsw i32 %40, %41
  %43 = xor i32 %39, %42
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = mul nsw i32 %44, %45
  %47 = xor i32 %43, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %10, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %51, %52
  %54 = xor i32 %50, %53
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %12, align 4
  %57 = mul nsw i32 %55, %56
  %58 = xor i32 %54, %57
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %11, align 4
  %61 = mul nsw i32 %59, %60
  %62 = xor i32 %58, %61
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %11, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %10, align 4
  %68 = mul nsw i32 %66, %67
  %69 = xor i32 %65, %68
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %9, align 4
  %72 = mul nsw i32 %70, %71
  %73 = xor i32 %69, %72
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %12, align 4
  %76 = mul nsw i32 %74, %75
  %77 = xor i32 %73, %76
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %12, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %11, align 4
  %83 = mul nsw i32 %81, %82
  %84 = xor i32 %80, %83
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %10, align 4
  %87 = mul nsw i32 %85, %86
  %88 = xor i32 %84, %87
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %9, align 4
  %91 = mul nsw i32 %89, %90
  %92 = xor i32 %88, %91
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %13, align 4
  %94 = and i32 %93, 286331153
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %14, align 4
  %96 = and i32 %95, 572662306
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %15, align 4
  %98 = and i32 %97, 1145324612
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %16, align 4
  %100 = and i32 %99, -2004318072
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %14, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %15, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* %16, align 4
  %107 = or i32 %105, %106
  ret i32 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
