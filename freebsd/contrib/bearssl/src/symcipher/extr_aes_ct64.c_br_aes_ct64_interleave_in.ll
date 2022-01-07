; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64.c_br_aes_ct64_interleave_in.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64.c_br_aes_ct64_interleave_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aes_ct64_interleave_in(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 3
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, 16
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = shl i32 %27, 16
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = shl i32 %31, 16
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = shl i32 %35, 16
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 65535
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, 65535
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 65535
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 65535
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = shl i32 %47, 8
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = shl i32 %51, 8
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = shl i32 %55, 8
  %57 = load i32, i32* %9, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = shl i32 %59, 8
  %61 = load i32, i32* %10, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, 16711935
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, 16711935
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 16711935
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, 16711935
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %9, align 4
  %73 = shl i32 %72, 8
  %74 = or i32 %71, %73
  %75 = load i32*, i32** %4, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = shl i32 %77, 8
  %79 = or i32 %76, %78
  %80 = load i32*, i32** %5, align 8
  store i32 %79, i32* %80, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
