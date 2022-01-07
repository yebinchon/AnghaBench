; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_c25519_m31.c_f255_square.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_c25519_m31.c_f255_square.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @f255_square to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f255_square(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [18 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 0
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @square9(i32* %10, i32* %11)
  %13 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 8
  %14 = load i32, i32* %13, align 16
  %15 = ashr i32 %14, 15
  %16 = call i32 @MUL15(i32 %15, i32 19)
  store i32 %16, i32* %6, align 4
  %17 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 8
  %18 = load i32, i32* %17, align 16
  %19 = and i32 %18, 32767
  store i32 %19, i32* %17, align 16
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %44, %2
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 9
  br i1 %22, label %23, label %47

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 9
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @MUL31(i32 %34, i32 622592)
  %36 = add nsw i32 %29, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, 1073741823
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 %40
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = ashr i32 %42, 30
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %23
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %20

47:                                               ; preds = %20
  %48 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 8
  %49 = load i32, i32* %48, align 16
  %50 = ashr i32 %49, 15
  %51 = call i32 @MUL15(i32 %50, i32 19)
  store i32 %51, i32* %6, align 4
  %52 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 8
  %53 = load i32, i32* %52, align 16
  %54 = and i32 %53, 32767
  store i32 %54, i32* %52, align 16
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %73, %47
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 9
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [18 x i32], [18 x i32]* %5, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %62, %63
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = and i32 %65, 1073741823
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* %9, align 4
  %72 = ashr i32 %71, 30
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %58
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %55

76:                                               ; preds = %55
  ret void
}

declare dso_local i32 @square9(i32*, i32*) #1

declare dso_local i32 @MUL15(i32, i32) #1

declare dso_local i32 @MUL31(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
