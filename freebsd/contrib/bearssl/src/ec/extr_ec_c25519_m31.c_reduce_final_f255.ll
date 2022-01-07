; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_c25519_m31.c_reduce_final_f255.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/bearssl/src/ec/extr_ec_c25519_m31.c_reduce_final_f255.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @reduce_final_f255 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reduce_final_f255(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [9 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @memcpy(i32* %7, i32* %8, i32 36)
  store i32 19, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 9
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 30
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 1073741823
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 %25
  store i32 %23, i32* %26, align 4
  br label %27

27:                                               ; preds = %13
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %10

30:                                               ; preds = %10
  %31 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 8
  %32 = load i32, i32* %31, align 16
  %33 = ashr i32 %32, 15
  store i32 %33, i32* %4, align 4
  %34 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 8
  %35 = load i32, i32* %34, align 16
  %36 = and i32 %35, 32767
  store i32 %36, i32* %34, align 16
  %37 = load i32, i32* %4, align 4
  %38 = load i32*, i32** %2, align 8
  %39 = getelementptr inbounds [9 x i32], [9 x i32]* %3, i64 0, i64 0
  %40 = call i32 @CCOPY(i32 %37, i32* %38, i32* %39, i32 36)
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @CCOPY(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
