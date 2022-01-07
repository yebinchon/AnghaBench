; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_big_dec.c_br_aes_big_keysched_inv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_big_dec.c_br_aes_big_keysched_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_aes_big_keysched_inv(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @br_aes_keysched(i32* %19, i8* %20, i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, 2
  store i32 %24, i32* %9, align 4
  store i32 4, i32* %8, align 4
  br label %25

25:                                               ; preds = %103, %3
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %106

29:                                               ; preds = %25
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = ashr i32 %35, 24
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = ashr i32 %37, 16
  %39 = and i32 %38, 255
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %10, align 4
  %41 = ashr i32 %40, 8
  %42 = and i32 %41, 255
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, 255
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @mule(i32 %45)
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @mulb(i32 %47)
  %49 = xor i32 %46, %48
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @muld(i32 %50)
  %52 = xor i32 %49, %51
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @mul9(i32 %53)
  %55 = xor i32 %52, %54
  store i32 %55, i32* %15, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @mul9(i32 %56)
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @mule(i32 %58)
  %60 = xor i32 %57, %59
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @mulb(i32 %61)
  %63 = xor i32 %60, %62
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @muld(i32 %64)
  %66 = xor i32 %63, %65
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @muld(i32 %67)
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @mul9(i32 %69)
  %71 = xor i32 %68, %70
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @mule(i32 %72)
  %74 = xor i32 %71, %73
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @mulb(i32 %75)
  %77 = xor i32 %74, %76
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @mulb(i32 %78)
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @muld(i32 %80)
  %82 = xor i32 %79, %81
  %83 = load i32, i32* %13, align 4
  %84 = call i32 @mul9(i32 %83)
  %85 = xor i32 %82, %84
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @mule(i32 %86)
  %88 = xor i32 %85, %87
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %15, align 4
  %90 = shl i32 %89, 24
  %91 = load i32, i32* %16, align 4
  %92 = shl i32 %91, 16
  %93 = or i32 %90, %92
  %94 = load i32, i32* %17, align 4
  %95 = shl i32 %94, 8
  %96 = or i32 %93, %95
  %97 = load i32, i32* %18, align 4
  %98 = or i32 %96, %97
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %98, i32* %102, align 4
  br label %103

103:                                              ; preds = %29
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %25

106:                                              ; preds = %25
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @br_aes_keysched(i32*, i8*, i64) #1

declare dso_local i32 @mule(i32) #1

declare dso_local i32 @mulb(i32) #1

declare dso_local i32 @muld(i32) #1

declare dso_local i32 @mul9(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
