; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_c25519_m31.c_f255_mul.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_c25519_m31.c_f255_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @f255_mul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f255_mul(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [18 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = getelementptr inbounds [18 x i32], [18 x i32]* %7, i64 0, i64 0
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @mul9(i32* %12, i32* %13, i32* %14)
  %16 = getelementptr inbounds [18 x i32], [18 x i32]* %7, i64 0, i64 8
  %17 = load i32, i32* %16, align 16
  %18 = ashr i32 %17, 15
  %19 = call i32 @MUL15(i32 %18, i32 19)
  store i32 %19, i32* %8, align 4
  %20 = getelementptr inbounds [18 x i32], [18 x i32]* %7, i64 0, i64 8
  %21 = load i32, i32* %20, align 16
  %22 = and i32 %21, 32767
  store i32 %22, i32* %20, align 16
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %47, %3
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 9
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [18 x i32], [18 x i32]* %7, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 9
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [18 x i32], [18 x i32]* %7, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @MUL31(i32 %37, i32 622592)
  %39 = add nsw i32 %32, %38
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, 1073741823
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [18 x i32], [18 x i32]* %7, i64 0, i64 %43
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* %10, align 4
  %46 = ashr i32 %45, 30
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %26
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %23

50:                                               ; preds = %23
  %51 = getelementptr inbounds [18 x i32], [18 x i32]* %7, i64 0, i64 8
  %52 = load i32, i32* %51, align 16
  %53 = ashr i32 %52, 15
  %54 = call i32 @MUL15(i32 %53, i32 19)
  store i32 %54, i32* %8, align 4
  %55 = getelementptr inbounds [18 x i32], [18 x i32]* %7, i64 0, i64 8
  %56 = load i32, i32* %55, align 16
  %57 = and i32 %56, 32767
  store i32 %57, i32* %55, align 16
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %76, %50
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %59, 9
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [18 x i32], [18 x i32]* %7, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = and i32 %68, 1073741823
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* %11, align 4
  %75 = ashr i32 %74, 30
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %61
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %58

79:                                               ; preds = %58
  ret void
}

declare dso_local i32 @mul9(i32*, i32*, i32*) #1

declare dso_local i32 @MUL15(i32, i32) #1

declare dso_local i32 @MUL31(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
