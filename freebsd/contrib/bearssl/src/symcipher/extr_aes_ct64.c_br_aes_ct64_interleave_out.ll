; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64.c_br_aes_ct64_interleave_out.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_aes_ct64.c_br_aes_ct64_interleave_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_aes_ct64_interleave_out(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 16711935
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 16711935
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 16711935
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 16711935
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = ashr i32 %21, 8
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = ashr i32 %25, 8
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = ashr i32 %29, 8
  %31 = load i32, i32* %9, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = ashr i32 %33, 8
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 65535
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 65535
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 65535
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, 65535
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = ashr i32 %46, 16
  %48 = or i32 %45, %47
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = ashr i32 %52, 16
  %54 = or i32 %51, %53
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = ashr i32 %58, 16
  %60 = or i32 %57, %59
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = ashr i32 %64, 16
  %66 = or i32 %63, %65
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  store i32 %66, i32* %68, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
