; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m15.c_p256_mulgen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_p256_m15.c_p256_mulgen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64)* @p256_mulgen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p256_mulgen(i32* %0, i8* %1, i64 %2) #0 {
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
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = call i32 @memset(i32* %7, i32 0, i32 4)
  store i32 1, i32* %8, align 4
  br label %16

16:                                               ; preds = %60, %3
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %17, -1
  store i64 %18, i64* %6, align 8
  %19 = icmp ugt i64 %17, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  %23 = load i8, i8* %21, align 1
  %24 = zext i8 %23 to i32
  store i32 %24, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %57, %20
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %60

28:                                               ; preds = %25
  %29 = call i32 @p256_double(i32* %7)
  %30 = call i32 @p256_double(i32* %7)
  %31 = call i32 @p256_double(i32* %7)
  %32 = call i32 @p256_double(i32* %7)
  %33 = load i32, i32* %10, align 4
  %34 = lshr i32 %33, 4
  %35 = and i32 %34, 15
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @NEQ(i32 %36, i32 0)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @lookup_Gwin(i32* %13, i32 %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %14, align 4
  %41 = call i32 @p256_add_mixed(i32* %14, i32* %13)
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %42, %43
  %45 = call i32 @CCOPY(i32 %44, i32* %7, i32* %13, i32 4)
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %8, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = call i32 @CCOPY(i32 %49, i32* %7, i32* %14, i32 4)
  %51 = load i32, i32* %12, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = shl i32 %55, 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %28
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %25

60:                                               ; preds = %25
  br label %16

61:                                               ; preds = %16
  %62 = load i32, i32* %7, align 4
  %63 = load i32*, i32** %4, align 8
  store i32 %62, i32* %63, align 4
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @p256_double(i32*) #1

declare dso_local i32 @NEQ(i32, i32) #1

declare dso_local i32 @lookup_Gwin(i32*, i32) #1

declare dso_local i32 @p256_add_mixed(i32*, i32*) #1

declare dso_local i32 @CCOPY(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
