; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i32_add.c_br_i32_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i32_add.c_br_i32_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @br_i32_add(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 63
  %17 = ashr i32 %16, 5
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %9, align 8
  store i64 1, i64* %8, align 8
  br label %19

19:                                               ; preds = %53, %3
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @EQ(i32 %38, i32 %39)
  %41 = and i32 %37, %40
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @LT(i32 %42, i32 %43)
  %45 = or i32 %41, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @MUX(i32 %46, i32 %47, i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %23
  %54 = load i64, i64* %8, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %8, align 8
  br label %19

56:                                               ; preds = %19
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32 @EQ(i32, i32) #1

declare dso_local i32 @LT(i32, i32) #1

declare dso_local i32 @MUX(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
