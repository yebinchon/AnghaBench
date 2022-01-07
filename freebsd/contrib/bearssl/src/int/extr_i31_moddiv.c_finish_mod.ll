; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_moddiv.c_finish_mod.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_moddiv.c_finish_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i32*, i32)* @finish_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_mod(i32* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i64 0, i64* %9, align 8
  br label %17

17:                                               ; preds = %36, %4
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %14, align 4
  %32 = sub nsw i32 %30, %31
  %33 = load i32, i32* %10, align 4
  %34 = sub nsw i32 %32, %33
  %35 = ashr i32 %34, 31
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %21
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %9, align 8
  br label %17

39:                                               ; preds = %17
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 0, %40
  %42 = ashr i32 %41, 1
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 1, %44
  %46 = or i32 %43, %45
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %10, align 4
  store i64 0, i64* %9, align 8
  br label %49

49:                                               ; preds = %78, %39
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %81

53:                                               ; preds = %49
  %54 = load i32*, i32** %5, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %15, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = xor i32 %61, %62
  %64 = load i32, i32* %12, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %16, align 4
  %68 = sub nsw i32 %66, %67
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %68, %69
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = and i32 %71, 2147483647
  %73 = load i32*, i32** %5, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 %72, i32* %75, align 4
  %76 = load i32, i32* %15, align 4
  %77 = ashr i32 %76, 31
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %53
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %9, align 8
  br label %49

81:                                               ; preds = %49
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
