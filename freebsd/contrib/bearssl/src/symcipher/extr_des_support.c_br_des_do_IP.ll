; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_des_support.c_br_des_do_IP.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/symcipher/extr_des_support.c_br_des_do_IP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_des_do_IP(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 4
  %14 = load i32, i32* %6, align 4
  %15 = xor i32 %13, %14
  %16 = and i32 %15, 252645135
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = xor i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = shl i32 %20, 4
  %22 = load i32, i32* %5, align 4
  %23 = xor i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 16
  %26 = load i32, i32* %6, align 4
  %27 = xor i32 %25, %26
  %28 = and i32 %27, 65535
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = xor i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 %32, 16
  %34 = load i32, i32* %5, align 4
  %35 = xor i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = ashr i32 %36, 2
  %38 = load i32, i32* %5, align 4
  %39 = xor i32 %37, %38
  %40 = and i32 %39, 858993459
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = xor i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 %44, 2
  %46 = load i32, i32* %6, align 4
  %47 = xor i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 8
  %50 = load i32, i32* %5, align 4
  %51 = xor i32 %49, %50
  %52 = and i32 %51, 16711935
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %5, align 4
  %55 = xor i32 %54, %53
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %7, align 4
  %57 = shl i32 %56, 8
  %58 = load i32, i32* %6, align 4
  %59 = xor i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = ashr i32 %60, 1
  %62 = load i32, i32* %6, align 4
  %63 = xor i32 %61, %62
  %64 = and i32 %63, 1431655765
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = xor i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = shl i32 %68, 1
  %70 = load i32, i32* %5, align 4
  %71 = xor i32 %70, %69
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32*, i32** %3, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32*, i32** %4, align 8
  store i32 %74, i32* %75, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
