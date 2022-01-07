; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_fmont.c_br_i31_from_monty.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/int/extr_i31_fmont.c_br_i31_from_monty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @br_i31_from_monty(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 31
  %17 = ashr i32 %16, 5
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %19

19:                                               ; preds = %68, %3
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %71

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @MUL31_lo(i32 %26, i32 %27)
  store i32 %28, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %9, align 8
  br label %29

29:                                               ; preds = %60, %23
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %29
  %34 = load i32*, i32** %4, align 8
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, 1
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %41, 1
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @MUL31(i32 %39, i32 %44)
  %46 = add nsw i32 %38, %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = ashr i32 %49, 31
  store i32 %50, i32* %11, align 4
  %51 = load i64, i64* %9, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %33
  %54 = load i32, i32* %12, align 4
  %55 = and i32 %54, 2147483647
  %56 = load i32*, i32** %4, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 %55, i32* %58, align 4
  br label %59

59:                                               ; preds = %53, %33
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %9, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %9, align 8
  br label %29

63:                                               ; preds = %29
  %64 = load i32, i32* %11, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 %64, i32* %67, align 4
  br label %68

68:                                               ; preds = %63
  %69 = load i64, i64* %8, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %8, align 8
  br label %19

71:                                               ; preds = %19
  %72 = load i32*, i32** %4, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @br_i31_sub(i32* %74, i32* %75, i32 0)
  %77 = call i32 @NOT(i32 %76)
  %78 = call i32 @br_i31_sub(i32* %72, i32* %73, i32 %77)
  ret void
}

declare dso_local i32 @MUL31_lo(i32, i32) #1

declare dso_local i32 @MUL31(i32, i32) #1

declare dso_local i32 @br_i31_sub(i32*, i32*, i32) #1

declare dso_local i32 @NOT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
